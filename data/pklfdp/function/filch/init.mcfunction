execute if data entity @s ArmorItems[3].id \
  run return fail
execute unless items entity @s \
  weapon.mainhand minecraft:chest_minecart \
  run return fail

execute summon minecraft:shulker_bullet \
  run function pklfdp:filch/init_

data modify entity @s Small set value 1b
data modify entity @s Marker set value 1b
data modify entity @s Invisible set value 1b
tag @s add pklfdp.IsMachine
data modify entity @s Pose.Head set value [180f,0f,0f]

data modify block ~ ~-0.5 ~ \
  components."minecraft:custom_data"."pklfdp:HasMachine" \
  set value 1b

data modify block ~ ~-0.5 ~ CustomName \
  set value '{\
  "translate": "pklfdp.enchantment.machine_filch",\
  "fallback": "机器：窃取"}'

data modify entity @s ArmorItems[3] \
  set value {id:"minecraft:budding_amethyst",count:1b}

data remove entity @s HandItems[0]

execute align xyz positioned ~0.5 ~0.2 ~0.5 \
  run teleport @s ~ ~ ~