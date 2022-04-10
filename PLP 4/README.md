# PLP 4: Loops and Subroutines

## On different types of loops

We are aware that it is possible to implement While loop in Coq. However, I was unabled to implement it on my Emacs for unknown reasons.
The series of books by University of Pennsylvania called Software Foundaions does have a guide on While loop. It is located in Volume 1, on Simple Imperative Programs. [1]

## On Functions, Syntax and Rules

To declare a function, you can use Definition. For example, we have

```coq
Definition cube (z : Z) : Z := z*z*z.
```

Coq does support recursive function through the use of Fixpoint. That said, I have not understood what and how to use Fixpoint, so I will refrain from explaning it.
```coq
Fixpoint add'' (n m : nat) : nat :=
  match m with
    | 0 => n
    | S m' => S (add' n m')
  end.
  
Eval compute in add'' 4 3.
```

Coq does allow functions with multiple parameters of differen types. That said, Coq is very strict when it comes to computation. 
For example, Coq does not allow you to sum a natural number and an integer.

I am not sure whether Coq can return multiple values at the same time. I also don't know if Coq passes value by reference or by value. 
That said, being a functional programming language, I am inclined to believe that Coq passes by value.

## On Tactics

One unique feature of Coq compared to other programming languages is its use of *tactics*. Coq is use to show the correctness of a mathematical proof or algorithm.
To do this, Coq calls propositions to be proved *goal*. And tactics help break this goal into subgoals, and try to solve these subgoals. The proof is complete
when there is no subgoal left.

```coq
Variables P Q R T : Prop.

(* Law of Transitivity, or Transitive Property of Implication. *)
Theorem imp_trans : (P -> Q) -> (Q -> R) -> P -> R.
Proof.
  intros H H' p. (* Assign (P -> Q) to H, (Q -> R) to H', and P to p. *)
  apply H'. (* This tactic reduces the goal to the premise of its type. *)
  apply H. (* Similar reasoning to the above. We have a new goal P. *)
  apply p.
Qed.

End Minimal_propositional_logic.

Print imp_trans. (* Print out lambda function for this law. *)
```

## References
<ul>
  <li> [1] Software Foundation: Logical Foundations. Univeristy of Pennsylvania</li>
</ul>
