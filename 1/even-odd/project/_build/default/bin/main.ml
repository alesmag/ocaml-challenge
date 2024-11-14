let is_even x = 
  x mod 2 = 0 
;;

let win a b = 
  let valid x = (x >= 1 && x <= 5) in
  let a_valid = valid a in
  let b_valid = valid b in
  let even_sum = is_even (a + b) in
  match (a_valid, b_valid, even_sum) with
  | (true, true, true) -> 1
  | (true, false, _) -> 1
  | (true, true, false) -> (-1)
  | (false, true, _) -> (-1)
  | (false, false, _) -> 0
;;

let () = 
Scanf.scanf("%d %d")
(
  fun a b ->
  let result = win a b in
  print_endline(string_of_int(result))
)
;;