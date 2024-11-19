type weekday = Mo | Tu | We | Th | Fr
type course = ALF | LIP

let isLecture d c =
  match d, c with
  | d, ALF when (d = Tu || d = Th || d = Fr) -> true
  | d, LIP when (d = We || d = Th) -> true
  | _ -> false
;;