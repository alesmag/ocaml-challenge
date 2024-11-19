let (<*>) f_opt x_opt =
  match f_opt, x_opt with
  | Some f, Some x -> Some (f x)
  | _ -> None
;;

let square x = x * x
let double x = 2 * x
let multiply x y = x * y;;

assert (Some square <*> None = None);;
assert (None <*> Some 2 = None);;
assert (None <*> (Some double <*> Some 2) = None);;
assert (Some multiply <*> Some 3 <*> Some 2 = Some 6);;
assert (Some multiply <*> None <*> Some 2 = None);;
print_endline("Tests OK");;