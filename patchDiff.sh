#!/bin/sh

branch = "apotheosis"
branchToDiff = "development"
file = "/home/swg/swg-main/patch/diff.txt"

echo "Generating Diff"
cd /home/swg/swg-main/dsrc/
mkdir /home/swg/swg-main/patch
git diff --name only $branchToDiff origin/$branch > $file

sed -i '/.txt/d' $file

echo "Swapping .tab files"
sed 's/.tab/.iff/g' $file
echo "Swapping .tpf files"
sed 's/.tpf/.iff/g' $file
echo "Swapping .mif files"
sed 's/.mif/.iff/g' $file
echo "Done! run ./copyPatch.sh!"
