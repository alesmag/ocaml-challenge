let tris (a, b, c, d) =
  match (a, b, c, d) with 
  | (_, x, y, z) when (x = y) && (y = z) -> true
  | (x, _, y, z) when (x = y) && (y = z) -> true
  | (x, y, _, z) when (x = y) && (y = z) -> true
  | (x, y, z, _) when (x = y) && (y = z) -> true
  | _ -> false
;;

let hand () =
  Random.self_init();
  let a = (Random.int 10) + 1 in
  let b = (Random.int 10) + 1 in
  let c = (Random.int 10) + 1 in
  let d = (Random.int 10) + 1 in
  let res = tris (a, b, c, d) in
  Printf.printf ("%d, %d, %d, %d -> %b\n") a b c d res
;;