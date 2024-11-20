type suit = S | H | D | C;;
type card = Card of int * suit;;

let randSuit () =
  match (Random.int 4) with 
  | 0 -> S
  | 1 -> H
  | 2 -> D
  | 3 -> C 
  | _ -> failwith "Error"
;;

let randCard () =
  Card((Random.int 10) + 1, randSuit())
;; 

let randHand () = 
  (randCard(), randCard(), randCard(), randCard(), randCard())
;; 

let check_card (Card(n1, s1), Card(n2, s2), Card(n3, s3), Card(n4, s4)) =
  (n1 = n2 && n2 = n3 && n3 = n4)
;;

let game_start (c1, c2, c3, c4, c5) =
  check_card(c1, c2, c3, c4) || 
  check_card(c1, c2, c3, c5) || 
  check_card(c1, c2, c4, c5) ||
  check_card(c1, c3, c4, c5) ||
  check_card(c2, c3, c4, c5)
;;

let poker () =
  game_start(randHand())
;;