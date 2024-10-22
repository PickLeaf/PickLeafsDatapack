data remove entity @s Small
data remove entity @s Marker
data remove entity @s Invisible
data remove entity @s ArmorItems[3]
data remove entity @s Pose
data modify entity @s Motion set value [0d,0.3d,0d]
tag @s remove pklfdp.IsMachine

data remove block ~ ~ ~ \
  components."minecraft:custom_data"."pklfdp:HasMachine"