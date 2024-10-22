execute summon minecraft:chest_minecart \
  run function pklfdp:filch/init__

data modify entity @s NoGravity set value 1b
data modify entity @s Owner set from storage pklfdp:var temp
data remove storage pklfdp:var temp
ride @s mount @n[type=minecraft:armor_stand,distance=..0.9]