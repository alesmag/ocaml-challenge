let xor1 a b =
  (a || b) && not(a && b)
;;

let xor2 a b =
  if (a || b) && not(a && b) then true
  else false
;;

let xor3 a b =
  match a, b with
  | false, true -> true
  | true, false -> true
  | _ -> false
;;