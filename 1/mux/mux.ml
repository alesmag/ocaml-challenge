let mux2 s0 a b =
  if s0
    then a
  else b
;;

let mux4 s1 s0 a0 a1 a2 a3 =
  let al = mux2 s0 a1 a0 in
  let ah = mux2 s0 a3 a2 in
  mux2 s1 al ah
;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;
print_endline("Tests OK");;