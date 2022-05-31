Require Import Arith.

(** [sum_cubes_to n] is [0*0*0 + 1*1*1 + ... + n*n*n]. **)
Fixpoint sum_cubes_to (n: nat) : nat :=
  match n with
  | 0 => 0
  | S n' => n * n * n + sum_cubes_to (n')
  end.

(** [sum_to n] is [0 + 1 + ... + n]. **)
Fixpoint sum_to (n: nat): nat :=
  match n with
  | 0 => 0
  | S n' => n + sum_to (n')
  end.

(* Other lemmas and theorems. *)
Lemma add_0_r : forall n:nat, n + 0 = n.
Proof.
  intros n. induction n as [ | n' IHn'].
  - (* n = 0 *)    reflexivity.
  - (* n = S n' *) simpl. rewrite -> IHn'. reflexivity.  Qed.

Lemma plus_n_Sm : forall n m : nat,
  S (n + m) = n + (S m).
Proof.
  intros n m.
  induction n as [| n' IHn'].
  - simpl. reflexivity.
  - simpl. rewrite <- IHn'. reflexivity.
Qed.

Lemma add_comm : forall n p : nat,
  n + p = p + n.
Proof.
  intros n m.
  induction n as [| n' IHn'].
  - simpl. rewrite -> add_0_r. reflexivity.
  - simpl. rewrite <- plus_n_Sm. rewrite -> IHn'. reflexivity.
Qed.

Lemma add_assoc : forall n m p : nat,
  n + (m + p) = (n + m) + p.
Proof.
  intros n m p.
  induction n as [| n' IHn'].
  - simpl. reflexivity.
  - simpl. rewrite -> IHn'. reflexivity.
Qed. 

Lemma add_0_l: forall n: nat, 0 + n = n.
Proof.
  intro n.
  rewrite add_comm. rewrite add_0_r. reflexivity.
Qed.

Lemma add_assoc2: forall n m p: nat,
    n + (m + p) = m + (n + p).
Proof.
  intros n m p.
  induction n as [| n' IHn'].
  - rewrite -> add_comm. rewrite -> add_0_r. rewrite -> add_0_l. reflexivity.
  - simpl. rewrite <- plus_n_Sm. rewrite IHn'. reflexivity.
Qed.

Lemma add_assoc3: forall n m p q: nat,
    n + m + (p + q) = n + p + (m + q).
Proof.
  intros n m p q.
  induction n as [| n' IHn'].
  - rewrite add_0_l. rewrite add_0_l. rewrite add_assoc2. reflexivity.
  - simpl. inversion IHn'. reflexivity.
Qed.

Lemma mul_0_r : forall n:nat,
  n * 0 = 0.
Proof.
  induction n as [| n' IHn'].
  - simpl. reflexivity.
  - simpl. rewrite -> IHn'. reflexivity.
Qed.

Lemma break_bracket_r: forall n m p: nat,
    n * (m + p) = n * m + n * p.
Proof.
  intros n m p.
  induction n as [| n' IHn'].
  - reflexivity.
  - simpl. rewrite -> IHn'. rewrite add_assoc3. reflexivity.
Qed.

Lemma nat_construct: forall n m: nat,
    n + n * m = n * S m.
Proof.
  intros n m.
  induction n as [| n' IHn' ].
  - rewrite add_0_l. reflexivity.
  - simpl. rewrite add_assoc2. rewrite IHn'. reflexivity.
Qed.

Lemma break_bracket_l: forall n m p: nat,
    n * (m + p) = m * n + p * n.
Proof.
  intros n m p.
  induction n as [| n' IHn'].
  - rewrite mul_0_r. rewrite mul_0_r. reflexivity.
  - simpl. rewrite -> IHn'. rewrite add_assoc3.
    rewrite nat_construct. rewrite nat_construct.
    reflexivity.
Qed.

Lemma plus_n_Sn'': forall n: nat,
    n + 1 = S n.
Proof.
  induction n as [| n' IHn'].
  - reflexivity.
  - simpl. inversion IHn'. reflexivity.
Qed.

Lemma foil: forall n m p q: nat,
    (n + m) * (p + q) = n * p + n * q + m * p + m * q.
Proof.
  intros. ring. (* Better take an Abstract Algebra class after this. *)
Qed.
(* I need to finish second_equality to finish this thing. *)

Lemma assocForFour: forall n m p q: nat,
    n + m + p + q = n + p + m + q.
Proof.
  intros n m p q.
  ring.
Qed.


(** The most important parts. **)

Lemma gauss_sum_integers: forall n: nat,
    2 * sum_to n = n * (n + 1).
Proof.
  (* IHn': Induction hypothesis n = k. *)
  induction n as [| n' IHn'].
  - (* Base case: n = 0 *) simpl. reflexivity.
  - (* Recursive case: n = k + 1 *)
    unfold sum_to. fold sum_to.
    rewrite break_bracket_r.
    assert (H: S n' = n' + 1).
    {rewrite plus_n_Sn''. reflexivity.}
    rewrite H.
    assert(H': n' + 1 + 1 = n' + 2).
    {ring.}
    rewrite H'.
    rewrite foil.
    rewrite assocForFour.
    rewrite <- break_bracket_l.
    assert(H'': 2 * (n' + 1) = n' * 2 + 1 * 2).
    {rewrite <- break_bracket_l. reflexivity.}
    rewrite H''.
    rewrite IHn'.
    rewrite add_comm.
    ring.
Qed.

Theorem sum_cubes: forall n: nat, 
    sum_cubes_to n = sum_to n * sum_to n.
Proof.
    (* IHn': Induction hypothesis n = k. *)
    induction n as [|n' IHn'].
    - (* Base case: n = 0 *) simpl. reflexivity.
    - (* Recursive case: n = k + 1 *)
    unfold sum_cubes_to. unfold sum_to. 
    fold sum_cubes_to. fold sum_to.
    rewrite IHn'. rewrite foil.
    assert(H: S n' * S n' +  S n' * sum_to n' + sum_to n' * S n'
              = S n' * S n' + S n' * (sum_to n' + sum_to n')).
    {ring.}
    rewrite H.
    assert(H': sum_to n' + sum_to n' = 2 * sum_to n').
    {simpl. rewrite add_0_r. reflexivity.}
    rewrite H'.
    rewrite gauss_sum_integers.
    rewrite plus_n_Sn''.
    assert (mult_comm: S n' * (n' * S n') = S n' * S n' * n').
    {ring.}
    rewrite mult_comm.
    assert (mult_iden: S n' * S n' + S n' * S n' * n' = S n' * S n' * (n' + 1)).
    {simpl. ring.}
    rewrite mult_iden.
    rewrite plus_n_Sn''.
    reflexivity.
Qed.
