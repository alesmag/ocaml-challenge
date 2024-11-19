
type season = Spring | Summer | Autumn | Winter

let squirrel_play tempr season =
  match tempr, season with
  | tempr, season when ((tempr >= 15 && tempr <= 30) || (tempr >= 15 && tempr <= 35 && season = Summer)) -> true
  | _ -> false
;;


assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;
print_endline("Tests OK");;