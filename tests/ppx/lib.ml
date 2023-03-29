type 'a t = 'a list Atomic.t

let make () = Atomic.make []

let rec push x t =
  let xs = Atomic.get t in
  if not (Atomic.compare_and_set t xs (x::xs))
  then push x t
