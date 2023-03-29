type 'a t = 'a list Atomic.t

val make : unit -> 'a t
val push : 'a -> 'a t -> unit
