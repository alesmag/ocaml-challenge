let best_offer offer1 offer2 offer3 =
  match (offer1, offer2, offer3) with
  | (Some x, Some y, Some z) -> Some (max x (max y z))
  | (Some x, Some y, None) -> Some (max x y)
  | (Some x, None, Some z) -> Some (max x z)
  | (None, Some y, Some z) -> Some (max y z)
  | (Some x, None, None) -> Some x
  | (None, Some y, None) -> Some y
  | (None, None, Some z) -> Some z
  | (None, None, None) -> None
;;