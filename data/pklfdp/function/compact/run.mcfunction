execute unless items block ~ ~ ~ container.0 #pklfdp:can_compact \
  run return fail

execute unless block ^ ^ ^1 #pklfdp:can_compact \
  run return fail

execute if function pklfdp:compact/chk_r \
  run return run function pklfdp:compact/udt_r

function pklfdp:compact/run_