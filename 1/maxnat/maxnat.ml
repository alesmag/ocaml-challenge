let max_nat a b =
  match a, b with
  | a, b when (a < 0 || b < 0) -> failwith("Errore")
  | a, b when (a > b) -> a
  | a, b when (b > a) -> b
  | _ -> failwith("Errore")
;;

assert(max_nat 2 5 = 5);;
assert(max_nat 5 2 = 5);;
assert(try max_nat (-2) 5 |> fun _ -> false with _ -> true);;
assert(try max_nat 2 (-5) |> fun _ -> false with _ -> true);;
assert(try max_nat (-2) (-5) |> fun _ -> false with _ -> true);;
print_endline("Tests OK");;