let is_posfrac (a, b) =
  if (b = 0) then false
  else (a * b > 0)
;;

let compare_posfrac (a, b) (c, d) =
  if not (is_posfrac (a, b) && is_posfrac (c, d)) then
    failwith("Errore")
  else
    let frac1 = a * d in
    let frac2 = c * b in
    if (frac1 = frac2) then 0
    else if (frac1 > frac2) then 1
    else (-1)
;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;
print_endline("Tests OK");;

let compare_frac (a, b) (c, d) =
  if (b = 0 || d = 0) then
    failwith("Errore")
  else
    let frac1 = a * d in
    let frac2 = c * b in
    if (frac1 = frac2) then 0
    else if (frac1 > frac2) then 1
    else (-1)
;;