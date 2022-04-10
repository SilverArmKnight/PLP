Section Minimal_propositional_logic.
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
