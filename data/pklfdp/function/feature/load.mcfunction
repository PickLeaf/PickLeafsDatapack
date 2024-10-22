execute unless items block ~ ~ ~ container.4 \
  #pklfdp:can_feature \
  run return fail

data modify entity @s ArmorItems[3] \
  set from block ~ ~ ~ Items[{Slot:4b}]

execute unless function pklfdp:feature/get_r \
  run return run data remove entity @s \
  ArmorItems[3]

tag @s add pklfdp.HasRecipe
data remove block ~ ~ ~ Items[{Slot:4b}]