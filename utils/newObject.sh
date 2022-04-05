/home/swg/swg-main1/build_object_template_crc_string_tables.py
perl  /home/swg/swg-main1/src/game/server/database/templates/processTemplateList.pl < /home/swg/swg-main1/dsrc/sku.0/sys.server/built/game/misc/object_template_crc_string_table.tab > /home/swg/swg-main1/build/templates.sql
sqlplus swg/swg@127.0.0.1:1521/swg @/home/swg/swg-main1/build/templates.sql > /home/swg/swg-main1/build/templates.out
