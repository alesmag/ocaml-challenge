let f1 x =
  if (x < 0) then
    failwith("Undefined")
  else 0
;;

let f2 x =
  if (x < 0) then
    failwith("Undefined")
  else if (x >= 0 && x <= 2) then 1
  else 0
;;

let f3 x =
  if (x < 0) then
    failwith("Undefined")
  else if (0 < x && x < 100) then 1
  else 0
;;

let f4 x =
  if (x < 0) then
    failwith("Undefined")
  else 0
;;

let f5 x =
  if (x < 0) then
    failwith("Undefined")
  else 1
;;

let f6 x =
  if (x < 0) then
    failwith("Undefined")
  else if (x mod 2 = 0) then 1
  else 0
;;

let f7 x =
  if (x < 0) then
    failwith("Undefined")
  else 1
;;

let f8 x =
  if (x < 0) then
    failwith("Undefined")
  else 1
;;

let f9 x =
  if (x < 0) then
    failwith("Undefined")
  else 1
;;

let f10 x =
  if (x < 0) then
    failwith("Undefined")
  else if (7 < x && x < 20) then 1
  else 0
;;

let f11 x = 
  if (x < 0) then
    failwith("Undefined")
  else if (x < 50) && (x mod 2 = 0) then 1
  else 0
;;

let f12 z = 
  if (z < 0) then
    failwith("Undefined")
  else if (z mod 2 = 0) && (0 < z && z < 50) then 1
  else 0
;;

let f13 z = 
  if (z < 0) then
    failwith("Undefined")
  else 
    let rec check x =
      if (x > z) then false
      else 
        let y = z - x in
        if (x * y) <= 20 then true
        else check (x + 1)
      in
      if (check 0) then 1 
      else 0
;;

let f14 x = 
  if (x < 0) then
    failwith("Undefined")
  else if (x >= 2) then 1
  else 0
;;

let f15 x = 
  if (x < 0) then
    failwith("Undefined")
  else 
    let rec check y =
      if (y > x) then true
      else if (x mod y = 0) && (y != 1) && (y != x) then false
      else check (y + 1)
    in
    if (x > 0) && (check 1) then 1 
    else 0
;;