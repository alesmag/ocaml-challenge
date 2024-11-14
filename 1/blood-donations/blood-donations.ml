type blood_group = A | B | AB | O

let map_type str =
  match str with
  | "A" -> A
  | "B" -> B
  | "AB" -> AB
  | "O" -> O
  | _ -> failwith "None"

let check_groups don ric = 
  match don, ric with
  | O, _ -> true
  | A, A | A, AB -> true
  | B, B | B, AB -> true
  | AB, AB -> true
  | _, _ -> false
;;