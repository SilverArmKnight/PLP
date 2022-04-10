(* Loop: While and For. *)

(* I was unable to implement and run While statement, although I do have the resources abou this topic. Please check out Software Foundations - Volume 1: Simple Imperative Programs. 

https://softwarefoundations.cis.upenn.edu/lf-current/Imp.html#dfe50505b2b595242030c436d0d7d15f *)

Definition fact_in_coq : com :=
  Z ::= X;;
  Y ::= 1;;
  WHILE ~(Z = 0) DO
    Y ::= Y × Z;;
    Z ::= Z - 1
  END.

(* Function that takes in two numbers, multiplies them, and returns the output. *)

Definition multiplyTwoNumbers (x y : nat) : nat := x * y.
Compute multiplyTwoNumbers 4 5.

(* Write a recursive function. *)
Require Import Coq.Arith.Compare_dec.

(* Adding two numbers recursively. If m = 0, then m + n = n. 
If m = m' + 1, then m + n = m' + n + 1. Repeat until m' = 0. *)

Fixpoint add'' (n m : nat) : nat :=
  match m with
    | 0 => n
    | S m' => S (add'' n m')
  end.

Print add''.
Eval compute in add'' 4 3.

(* Function that takes in a string, splits it into two strings, then returns them both. *)
(* Best I can give you is a substring method from Coq. *)

Require Import Coq.Strings.String.

(* Syntax is substring n m s: Returns the substring of s that starts at position n 
and end at position m. *)
Compute substring 0 5 "Hello World!".

(* Call your functions and save the results of the function calls in variables. *)

Definition s : nat := add'' 5 6.
Compute s.

(* Function that tests whether your language is pass-by-reference or pass-by-value.*)
(* I don't have an answer to this quesiton. *)
