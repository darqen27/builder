#!/usr/bin/env nix-shell
#!nix-shell -i python -p python pythonPackages.beautifulsoup pythonPackages.lxml

from HTMLParser import HTMLParser
import json
import re
import sys
import urllib2

from lxml.html import soupparser


VERSION = sys.argv[1]
VERSION_FILTERS = {
  '1.10.2': ['2020709689%3A6170', '2020709689%3A6084'],  # 1.9.4 mods work as well. Usually.
  '1.7.10': ['2020709689%3A4449'],
}[VERSION]

def Get(url):
    print >> sys.stderr, 'Fetching', url
    try:
        req = urllib2.urlopen(url, cafile='/etc/ssl/certs/ca-bundle.crt')
        return req.read()
    finally:
        req.close()

def DerefUrl(url):
    try:
        req = urllib2.urlopen(url, cafile='/etc/ssl/certs/ca-bundle.crt')
        return req.geturl()
    finally:
        req.close()

def GetNewestVersions(manifest):
    baseUrl = 'https://minecraft.curseforge.com'
    data = json.load(manifest)
    parser = HTMLParser()
    for mod in data['files']:
        for version_filter in VERSION_FILTERS:
            print >> sys.stderr, (mod)
            # Name the project.
            projectUrl = baseUrl + '/projects/' + str(mod['projectID'])
            projectUrl = DerefUrl(projectUrl).split('?')[0]
            # Find the newest copy of the mod.
            filesUrl = projectUrl + '/files?filter-game-version=' + version_filter
            filesPage = Get(filesUrl)
            tree = soupparser.fromstring(filesPage)
            files = tree.xpath('//div[@class="project-file-name-container"]/a[@class="overflow-tip"]/@href')
            names = tree.xpath('//div[@class="project-file-name-container"]/a[@class="overflow-tip"]/text()')
            stability = tree.xpath('//td[@class="project-file-release-type"]/div/@class')
            assert len(files) == len(names) == len(stability)
            files_filtered = []
            names_filtered = []
            for i in xrange(len(files)):
              if 'alpha' not in stability[i]:
                files_filtered.append(files[i])
                names_filtered.append(names[i])
            if files_filtered:
              files = files_filtered
              names = names_filtered
            if files:
              # Find the URL and MD5 of that file.
              filePage = Get(baseUrl + files[0])
              tree = soupparser.fromstring(filePage)
              md5 = tree.xpath('//span[@class="md5"]/text()')
              url = tree.xpath('//a[@class="button fa-icon-download"]/@href')
              yield parser.unescape(names[0]), md5[0], baseUrl + url[0]
              break


print '['
for filename, md5, url in GetNewestVersions(sys.stdin):
    name = re.subn(r"[ \[\]'()&:;]", '_', filename)[0]
    if not filename.endswith('.jar') or filename.endswith('.zip'):
        filename += '.jar'
    print '  {'
    print '    name = "%s";' % name
    print '    filename = "%s";' % filename
    print '    url = "%s";' % url
    print '    md5 = "%s";' % md5
    print '  }'
print ']'
