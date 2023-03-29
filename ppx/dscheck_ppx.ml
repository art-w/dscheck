let loc = Ppxlib.Location.none
let impl str = [%str open! Dscheck.Open] @ str
let intf sg = [%sig: open! Dscheck.Open] @ sg
let () = Ppxlib.Driver.register_transformation "dscheck" ~impl ~intf
