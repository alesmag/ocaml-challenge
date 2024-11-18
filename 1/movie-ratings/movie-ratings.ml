let movie_rating v1 v2 v3 =
  match v1, v2, v3 with
  | v1, v2, v3 when (v1 < 1 || v1 > 5 || v2 < 1 || v2 > 5 || v3 < 1 || v3 > 5) -> failwith("Errore")
  | (5, 5, 5) -> "Masterpiece"
  | (5, 5, 4) | (5, 4, 5) | (4, 5, 5) -> "Highly Recommended"
  | (5, 4, 4) | (4, 5, 4) | (4, 4, 5) | (4, 4, 4) | (4, 4, 3) | (4, 3, 4) | (3, 4, 4) -> "Recommended"
  | (_, _, _) -> "Mixed Reviews"
;;