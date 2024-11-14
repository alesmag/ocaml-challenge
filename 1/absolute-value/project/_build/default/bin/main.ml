let f x = 
  if (x < 0) then x * (-1)
  else x
;;

let () = 
  let x = int_of_string(read_line()) in
  let res = f x in
  Printf.printf("%d\n") res
;;