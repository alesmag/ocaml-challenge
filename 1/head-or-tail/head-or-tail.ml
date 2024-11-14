let hot () =
  if (Random.int 2 = 0) then "tail"
  else "head"
;;

let () =
  Random.self_init()
;;