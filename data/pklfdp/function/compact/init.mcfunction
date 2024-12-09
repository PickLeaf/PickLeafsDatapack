execute if data entity @s ArmorItems[3].id \
  run return fail

data modify entity @s Small set value 1b
data modify entity @s Marker set value 1b
data modify entity @s Invisible set value 1b
tag @s add pklfdp.IsMachine

data modify block ~ ~-0.5 ~ \
  components."minecraft:custom_data"."pklfdp:HasMachine" \
  set value 1b

data modify entity @s ArmorItems[3] \
  set value {id:"minecraft:anvil",count:1b}

execute align xyz positioned ~0.5 ~0.25 ~0.5 \
  run teleport @s ~ ~ ~