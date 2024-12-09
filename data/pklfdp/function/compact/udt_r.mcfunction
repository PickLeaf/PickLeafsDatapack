execute if function pklfdp:crushing/get_r \
  run return run data modify entity @s \
  ArmorItems[3].components."minecraft:custom_data".r_id \
  set from block ~ ~ ~ item.id

data modify entity @s \
  ArmorItems[3].components."minecraft:custom_data".r \
  set value {id:"minecraft:air"}

data remove block ~ ~-1 ~ item