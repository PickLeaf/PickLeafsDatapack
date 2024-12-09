data modify entity @s \
  ArmorItems[3].components."minecraft:custom_data".temp.item \
  set from block ~ ~ ~ Items[{Slot:0b}].id

loot replace entity @s weapon.mainhand mine ^ ^ ^1 \
  minecraft:diamond_pickaxe[ \
  minecraft:enchantments={"minecraft:silk_touch":1}]
data modify entity @s \
  ArmorItems[3].components."minecraft:custom_data".temp.block \
  set from entity @s HandItems[0].id
data remove entity @s HandItems[0]

return run data modify entity @s \
  ArmorItems[3].components."minecraft:custom_data".r_id \
  set from entity @s \
  ArmorItems[3].components."minecraft:custom_data".temp