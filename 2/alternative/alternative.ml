let (<|>) opt1 opt2 =
  match opt1, opt2 with
  | opt1, opt2 when (opt1 != None) -> opt1
  | opt1, opt2 when (opt1 = None) -> opt2
  | _ -> None
;;

assert (Some true <|> Some false = Some true);;
assert (None <|> Some false = Some false);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> Some "dog" = Some "dog");;
print_endline("Tests OK");;