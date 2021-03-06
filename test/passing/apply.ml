let _ = List.map ~f:(( + ) (M.f x))

let id x = x

let plus a ?(b= 0) c = a + b + c

;; id (plus 1) ~b:1

(* The version above does not type-check, while the version below does
   type-check, and should not be formatted to the above. See
   https://caml.inria.fr/mantis/view.php?id=7832 for explanation on the
   type-checking (and dynamic semantics) distinction. *)

;; (id (plus 1)) ~b:1
