data modify storage pklfdp:var temp.x \
  set from block ~ ~-1 ~ \
  Items[0].components."minecraft:lodestone_tracker".target.pos[0]
data modify storage pklfdp:var temp.y \
  set from block ~ ~-1 ~ \
  Items[0].components."minecraft:lodestone_tracker".target.pos[1]
data modify storage pklfdp:var temp.z \
  set from block ~ ~-1 ~ \
  Items[0].components."minecraft:lodestone_tracker".target.pos[2]
data modify storage pklfdp:var temp.dimension \
  set from block ~ ~-1 ~ \
  Items[0].components."minecraft:lodestone_tracker".target.dimension

function pklfdp:chunk_load/remote/load_ \
  with storage pklfdp:var temp

data remove storage pklfdp:var temp