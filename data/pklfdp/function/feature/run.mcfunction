execute if data entity @s {Health:0f} \
  run data remove entity @s \
  ArmorItems[3].components."minecraft:custom_data"

execute positioned ~ ~-5 ~ \
  unless predicate pklfdp:is_void \
  run return fail
  
playsound minecraft:block.anvil.land block @a ~ ~ ~ 0.25
data modify entity @s Health set value 16f

data modify storage pklfdp:var temp.chance \
  set from block ~ ~ ~ \
  components."minecraft:custom_data".chance

execute if predicate pklfdp:roll \
  run function pklfdp:feature/run_ with block ~ ~ ~ \
  components."minecraft:custom_data"

data remove storage pklfdp:var temp