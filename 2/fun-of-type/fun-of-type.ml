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

let f10 f =
  -f (-1)
;;

let f11 f =
  if (f 0) then 0 else 1
;;

let f12 f =
  f true + f false
;;

let f13 f =
  if f 1 then true else false
;;

let f14 f =
  if f true then 1 else 0
;;

let f15 num (a, b) =
  num * (a + b)
;; 

let f16 x =
  fun y -> fun z -> x + y + z 
;;

let f17 f =
  fun x -> f (f x + 1)
;;

let f18 f =
  -f (fun x -> x + 1)
;;

let f19 f =
  fun x -> f (if x then 1 else 0) > 0
;;

let f20 f =
  fun x -> if f (if x then 1 else 0) then 1 else 0
;;