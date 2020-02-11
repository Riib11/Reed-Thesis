Require Import Program.Basics.
Open Scope program_scope.

Require Functor.
Require Monad.

Set Universe Polymorphism.

Section Free.

Inductive t (F : Type -> Type) (A : Type) : Type :=
| pure     : A -> t F A
| bind {X} : F X -> (X -> t F A) -> t F A.

Arguments pure {F A}   _.
Arguments bind {F A X} _ _.

Instance functor {F} `{Functor.t F} : Functor.t (t F).
Proof.
  apply Functor.Build_t.
  (* functor map *)
  intros X A f ffx.
  destruct ffx.
  - apply pure. apply f. exact x.
  - apply (@bind F A X).
Admitted.

Instance free_monad {F} `{Functor.t F} : Monad.t (t F).
Proof.
  apply Monad.Build_t.
  apply functor.
  (* monad_unit *)
  exact (@pure F).
  (* monad_bind *)
  intros X A ffx x_ffa.
  apply (@bind F A X).
  destruct ffx.
Admitted.

End Free.


