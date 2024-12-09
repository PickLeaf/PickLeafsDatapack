data modify block ~ ~ ~ Items \
  append from entity @s \
  ArmorItems[3].components."minecraft:custom_data".r

item modify block ~ ~ ~ container.0 pklfdp:minus_one
setblock ^ ^ ^1 minecraft:air
playsound minecraft:entity.enderman.teleport block @a