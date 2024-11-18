let minmax3 a b c =
  let min = min a (min b c) in
  let max = max a (max b c) in
  (min, max)
;;