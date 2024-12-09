$return run data modify entity @s \
  ArmorItems[3].components."minecraft:custom_data".r \
  set from storage pklfdp:r crushing."$(id)"

return fail