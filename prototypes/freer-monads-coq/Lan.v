Require Import Program.Basics.
Open Scope program_scope.

Require Functor.
Require Monad.

Section Lan.

Inductive t (G : Type -> Type) (A : Type) : Type :=
| Build_t {X} : G X -> (X -> A) -> t G A.

Instance functor {G} : Functor.t (t G).
Proof.
  apply Functor.Build_t.
  intros A B f lga.
  destruct lga.
  apply (@Build_t G B X).
  exact g.
  exact (f ∘ a).
Defined.

Definition lift {G A} : G A -> t G A.
Proof.
  intro ga.
  apply (@Build_t G A A).
  exact ga.
  exact id.
Defined.

End Lan.
