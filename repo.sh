rm -rf ./Packages

rm -rf ./Packages.bz2

echo "Building packages list..."

dpkg-scanpackages -m ./debs > ./Packages

bzip2 -5fkv ./Packages > ./Packages.bz2