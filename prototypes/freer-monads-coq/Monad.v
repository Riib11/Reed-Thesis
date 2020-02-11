Require Import Program.Basics.
Open Scope program_scope.

Require Functor.

Declare Scope monad_scope.

Section Monad.

Class t (M : Type -> Type) : Type :=
  { functor :> Functor.t M ;
    unit : forall A, A -> M A ;
    bind : forall A B, M A -> (A -> M B) -> M B }.

Arguments unit {M t A} _.
Arguments bind {M t A B} _ _.

Notation "m >>= f" :=
  (bind m f)
    (at level 70, right associativity) :
    monad_scope.

Definition compose {M A B C} `{t M} :
  (A -> M B) -> (B -> M C) -> (A -> M C) :=
  fun f g => (fun mb => bind mb g) ∘ f.

Notation "f >=> g" :=
  (compose f g)
    (at level 70, right associativity) :
    monad_scope.

Definition sequence {M A B} `{t M} :
  M A -> M B -> M B :=
  fun m m' => bind m (fun _ => m').

Notation "m >> m'" :=
  (sequence m m')
    (at level 70, right associativity) :
    monad_scope.

End Monad.
