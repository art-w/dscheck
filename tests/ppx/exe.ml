(* Not using Dscheck *)

let () =
  let t = Lib.make () in
  Lib.push 1 t ;
  Lib.push 2 t ;
  assert (Stdlib.Atomic.get t = [2;1])
