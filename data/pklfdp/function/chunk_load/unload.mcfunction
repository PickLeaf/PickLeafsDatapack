data modify block ~ ~ ~ OutputSignal \
  set value 100

data modify entity @s ArmorItems[3] \
  set value {id:"minecraft:conduit",count:1b}

execute if data block ~ ~-1 ~ \
  Items[0].components."minecraft:lodestone_tracker" \
  run return run function pklfdp:chunk_load/remote/unload

execute unless function pklfdp:chunk_load/query \
  run return fail

execute positioned ^ ^ ^1 run forceload remove ~ ~
playsound minecraft:block.composter.ready block @a