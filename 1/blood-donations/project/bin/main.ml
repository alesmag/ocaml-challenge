type blood_group = A | B | AB | O

let check_groups don ric = 
  match don, ric with
  | O, _ -> true
  | A, A | A, AB -> true
  | B, B | B, AB -> true
  | AB, AB -> true
  | _, _ -> false
;;

let () =
  assert (check_groups O AB = true);
  assert (check_groups A B = false);
  assert (check_groups A AB = true);
  assert (check_groups B AB = true);
  assert (check_groups AB A = false);
  assert (check_groups O O = true);
  assert (check_groups O A = true);
  assert (check_groups O B = true);
  assert (check_groups AB B = false);
;;