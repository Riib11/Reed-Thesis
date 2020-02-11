Section Functor.

Class t (F: Type -> Type) : Type :=
  { map : forall A B, (A -> B) -> F A -> F B }.

Arguments map {F t A B} _ _.

End Functor.
