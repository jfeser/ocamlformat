module type S = functor () -> sig end

module type S = functor () () -> sig end

module type M = functor () -> sig end

module type M = functor (S : S) -> sig end

module type M = functor (S : S) (T : T) -> sig end

module type M = functor (S : S) (T : T) -> U

module type M = functor (S : S) () -> sig end

module type M = functor
  (SSSSS : SSSSSSSSSSSSSS)
  (TTTTT : TTTTTTTTTTTTTTTT)
  -> sig
  val t1 : a

  val t2 : b
end

module M : functor () -> sig end = functor () -> struct end

module M = (functor (S : S) -> struct end) (S)

module M = (functor (S : S) (T : T) -> struct end) (S) (T)

module M = (functor (S : S) (T : T) -> struct end : U) (S) (T)

module M = (functor (S : S) () -> struct end : U) (S) (T)

module M = (functor (S : S) (T : T) -> (struct end : U)) (S) (T)

module M =
  (functor
    (SSSSS : sssssSSSSSSSSSSSSSS)
    (TTTTT : TTTTTTTTTTTTTTTTTTTTT)
    ->
    struct
      let x = 2

      let y = 3
    end)
    (S)
    (T)
