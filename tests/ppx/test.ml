module A = Dscheck.TracedAtomic

let test () =
  A.trace @@ fun () ->
  let t = Lib.make () in
  A.spawn (fun () -> Lib.push 1 t);
  A.spawn (fun () -> Lib.push 2 t);
  A.final (fun () ->
    A.check (fun () ->
      let xs = A.get t in
      xs = [1;2] || xs = [2;1]))

let () =
  let open Alcotest in
  run "dscheck_ppx"
    [
      ( "lib",
        [
          test_case "test" `Quick test;
    ])]
