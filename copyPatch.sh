#!/bin/sh

mkdir /home/swg/swg-main/out
mkdir /home/swg/swg-main/out/game

cp "/home/swg/swg-main/data/sku.0/sys.shared/compiled/game/built/misc/quest_crc_string_table.iff" "/home/swg/swg-main/out/game"

for file in $(cat /home/swg/swg-main/diff.txt); do cp --parents /home/swg/swg-main/data/sku.0/sys.shared/compiled/game/$file /home/swg/swg-main/out/game; done

echo "Done!"
