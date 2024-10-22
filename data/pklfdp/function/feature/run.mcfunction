#execute positioned ~ ~-5 ~ \
  unless predicate pklfdp:is_void \
  run return fail
  
playsound minecraft:block.anvil.land block @a ~ ~ ~ 0.25
data modify entity @s Health set value 16f

data modify storage pklfdp:var temp.chance \
  set from entity @s \
  ArmorItems[3].components."minecraft:custom_data".r.chance

execute if predicate pklfdp:roll \
  run function pklfdp:feature/run_ with entity @s \
  ArmorItems[3].components."minecraft:custom_data".r

data remove storage pklfdp:var temp