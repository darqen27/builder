#!/usr/bin/env nix-shell
#!nix-shell -i python -p
#
# This autogenerates .json files from .zip Curse modpacks.
#
# Call this from the root of the git repository.

from glob import glob
import json
import os
import zipfile


def Convert(manifest):
    assert manifest['manifestVersion'] == 1
    data = {}
    for mod in manifest['files']:
        data[mod['projectID']] = mod
    return data


# Generate all packs:
for fn in glob('manifest/*.zip'):
    outfn = fn[:-3] + 'json'
    zf = zipfile.ZipFile(fn)
    manifest = json.load(zf.open('manifest.json'))
    data = Convert(manifest)
    with open(outfn, 'w') as f:
        json.dump(data, f, indent=True)
