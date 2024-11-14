type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;

let map_vote str =
  match str with
  | "StrongReject" -> StrongReject
  | "WeakReject" -> WeakReject
  | "WeakAccept" -> WeakAccept
  | "StrongAccept" -> StrongAccept
  | _ -> failwith "None"
;;

let decide_exam v1 v2 v3 =
  match v1, v2, v3 with 
  | (WeakReject, WeakReject, _) -> false
  | (WeakReject, _, WeakReject) -> false
  | (_, WeakReject, WeakReject) -> false
  | (StrongReject, _, _) -> false
  | (_, StrongReject, _) -> false
  | (_, _, StrongReject) -> false 
  | _ -> true
;;