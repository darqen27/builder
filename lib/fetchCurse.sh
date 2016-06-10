source $stdenv/setup

CURL="curl -LA MCPackBuilder"
XIDEL="xidel --output-format=bash"

# First, find the correct download for the requested version.
$CURL "$filesUrl" | $XIDEL - \
        -e 'links:=//div[@class="project-file-name-container"]/a[@class="overflow-tip"]/@href' \
        -e 'names:=//div[@class="project-file-name-container"]/a[@class="overflow-tip"]/text()' \
        > files.sh

source files.sh

echo Target: "$target"
lim=${#names[@]}
for i in $(seq 0 $(($lim - 1))); do
    name="${names[$i]}"
    link="${links[$i]}"
    if [[ "$name" = "$target" ]]; then
        break
    fi
    link=
done

if [[ -z $link ]]; then
    echo "Target not found!"
    echo Alternatives:
    for i in $(seq 0 $(($lim - 1))); do
        echo "${names[$i]}"
    done
    exit 1
fi

echo 'Found requested mod:' $name at $link

# Now create the derivation spec.
$CURL "$curse""$link" | $XIDEL - \
      -e 'md5:=//span[@class="md5"]/text()' \
      -e 'url:=//a[@class="button fa-icon-download"]/@href' \
      > file.sh

source file.sh

if [ -z "$name" -o -z "$url" -o -z "$md5" ]; then
    echo "You're having a bad time."
    exit 2
fi

# Clean up name.
name=$(echo "$name" | sed "s/[ '()]/_/g")

cat > $out <<EOF
{
  name = "$name";
  url = $curse$url;
  md5 = "$md5";
}
EOF
