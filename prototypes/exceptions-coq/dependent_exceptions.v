Inductive exception (A : Set) (a : A) : Type
  := throw : exception A a.

Arguments throw _ _.

Definition catching
           (A B : Set) (a : A)
           (e : exception A a)
           (h : exception A a -> B)
           (b : B)
  : B.
Admitted.


Definition f (A : Type) (a1 a2 a3 : A) : A := a1.


Definition ident A (a:A) := a.
