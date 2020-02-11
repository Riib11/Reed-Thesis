Require Import Program.
Open Scope program_scope.
Open Scope list_scope.

Require Functor.
Require Monad.

Section Freest.

  Definition Effect := (Type -> Type) -> Type -> Type.
  Definition EffectStack := list Effect.

  Inductive Member (E : Effect) : EffectStack -> Prop :=
  | head : forall (ES : EffectStack), Member E (E :: ES)
  | tail : forall (ES : EffectStack) (E' : Effect), Member E ES -> Member E (E' :: ES)
  .

  Class Member (E : Effect) (ES : EffectStack) : Type :=
    { extract : { f : ES -> E exit
  Definition Union (ES : EffectStack) (A : Type) : Type :=
    forall (M : Type -> Type), exists (E : Effect), Member E ES -> E M A.
  
  Definition Union (ES : EffectStack) : Type -> Type := { E : Effect | Member E ES }.

  Inductive t (ES : EffectStack) (A : Type) :=
  | pure   : A -> t ES A
  | impure : forall (X : Type), Union ES X -> (X -> t ES A) -> t ES A
  .
