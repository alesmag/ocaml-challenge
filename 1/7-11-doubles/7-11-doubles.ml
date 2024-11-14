let d1 = (Random.int 6) + 1;;
let d2 = (Random.int 6) + 1;;

let seven_eleven_doubles () =
  let b = (d1 + d2 = 7) || (d1 + d2 = 11) || (d1 = d2) in
  (b, d1, d2)
;;

let () = 
  Random.self_init()
;;