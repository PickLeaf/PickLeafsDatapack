data remove entity @s \
  ArmorItems[3].components."minecraft:custom_data".temp

data remove entity @s \
  ArmorItems[3].components."minecraft:custom_data".r

execute unless function pklfdp:compact/get_r \
  run return run data remove entity @s \
  ArmorItems[3].components."minecraft:custom_data".r_id
  
data modify entity @s \
  ArmorItems[3].components."minecraft:custom_data".r.Slot \
  set value 2b

function pklfdp:compact/run_