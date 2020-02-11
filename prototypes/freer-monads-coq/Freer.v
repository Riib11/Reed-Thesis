Require Import Program.Basics.
Open Scope program_scope.

Require Functor.
Require Monad.

Section Freer.

Inductive t (G : Type -> Type) (A : Type) : Type :=
| pure : A -> t G A
| impure {X} : G X -> (X -> t G A) -> t G A
.

Arguments pure   {G A} _.
Arguments impure {G A X} _ _.

Definition η {G A} : G A -> t G A.
Proof.
  intro ga.
  apply (@impure G A A).
  exact ga.
  exact (@pure G A).
Defined.

Instance functor {G} : Functor.t (t G).
Proof.
  apply Functor.Build_t.
  (* functor_map *)
  intros A B f fμ.
  induction fμ as [a | X μ k k'].
  - exact (pure (f a)).
  - apply (impure μ).
    exact k'.
Defined.

Instance monad {G} : Monad.t (t G).
Proof.
  apply Monad.Build_t.
  exact functor.
  (* monad_pure *)
  - intros A a.
    exact (pure a).
  (* monad_bind *)
  - intros A B fμ k.
    induction fμ as [a | X μ k' k''].
    + exact (k a).
    + apply (@impure G B X μ).
      exact k''.
Defined.

End Freer.
