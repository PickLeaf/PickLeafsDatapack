execute unless items block ~ ~ ~ container.4 \
  #pklfdp:can_feature \
  run return fail

item replace entity @s armor.head \
  from block ~ ~ ~ container.4

execute unless function pklfdp:feature/get_r \
  run return run data remove entity @s \
  ArmorItems[3]

data remove block ~ ~ ~ Items[{Slot:4b}]