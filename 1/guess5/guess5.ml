let guess5 num = 
  let x = (Random.int 5) + 1 in
  if (num < 1 || num > 5) then failwith "Errore"
  else ((x = num), x)
;;

let () = 
  Random.self_init ()
;;