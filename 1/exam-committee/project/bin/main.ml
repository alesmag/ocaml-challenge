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

let () = 
  let input = read_line() in
  let votes = String.split_on_char(' ') input in
  let v1 = map_vote(List.nth votes 0) in
  let v2 = map_vote(List.nth votes 1) in
  let v3 = map_vote(List.nth votes 2) in
  let res = decide_exam v1 v2 v3 in
  Printf.printf("%b")(res)
;;