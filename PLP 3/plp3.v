Require Import Bool.
Require Import ZArith.
Require Import Coq.Init.Logic.

(* A one-condition if/else statement. *)
Compute if true then 3 else 4.

(* A multi-condition if/else statement. *)
Compute if true && false then 6 else 7.

(* If/elif/else statement is already written above. *)
Compute if (4 > 3) || false then 8 else 9.

(* I don't know how to test short-circuit in Coq. If you try things like division by 0,
the terminal will say that this expression is of type Prop, not bool. *)

