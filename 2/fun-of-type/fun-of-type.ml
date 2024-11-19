let f1 x =
  x > 0
;;

let f2 flag =
  if flag then 1
  else 0
;;

let f3 x =
  (x, x > 0)
;;

let f4 (x, flag) =
  if flag then x
  else -x
;;

let f5 x =
  fun y -> x + y
;;

let f6 x =
  fun y -> (x + y) mod 2 = 0
;;

let f7 flag =
  fun x -> flag && x > 0
;;

let f8 flag =
  fun b -> if (flag && b) then 1 
  else 0
;;

let f9 flag =
  fun x -> if flag then x + 1 else x
;;