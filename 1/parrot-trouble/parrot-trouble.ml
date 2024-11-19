let parrot_trouble flag time =
  match flag, time with
  | _, time when (time < 0 || time > 23) -> None
  | true, time when (time < 7 || time > 20) -> Some true
  | _ -> Some false
;;