fill ~-1 ~ ~-1 ~16 ~ ~16 \
  minecraft:moss_block replace minecraft:cave_air
fill ~-1 ~ ~-1 ~16 ~ ~16 \
  minecraft:cobblestone replace #pklfdp:can_place_replace
fill ~ ~ ~ ~15 ~ ~15 minecraft:air \
  replace #pklfdp:chunk_clear_cleanable
fill ~ ~ ~ ~15 ~ ~15 minecraft:air \
  destroy

teleport ~ ~ ~

execute positioned ~ ~-1 ~ \
  if function pklfdp:chunk_clear/chk \
  run return run function pklfdp:chunk_clear/rpt

kill @s