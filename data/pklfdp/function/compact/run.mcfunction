loot insert ~ ~-1 ~ mine ~ ~ ~ \
  minecraft:diamond_pickaxe[ \
  minecraft:enchantments={"minecraft:silk_touch":1}]

execute if function pklfdp:crushing/chk_r \
  run function pklfdp:crushing/udt_r

data modify block ~ ~-1 ~ item \
  set from entity @s \
  ArmorItems[3].components."minecraft:custom_data".r

setblock ~ ~ ~ minecraft:air
playsound minecraft:block.anvil.step block @a
particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal