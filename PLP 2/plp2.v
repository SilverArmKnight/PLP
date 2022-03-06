Require Import ZArith.
Require Import Strings.String.
Require Import Floats.
Require Import Lists.List.

Definition integer := 42 : Z.
Print integer.

Definition str := "Hello World!" : string.
Print str.

Definition flt := 0.5 : float.
Print flt.

Definition russell := true : bool.
Print russell.

Definition aList := 1 :: 3 :: 2 :: nil.
Print aList.

(* I was not able to create a map in Coq, because this is too difficult. 
The only discussion about maps I can find is on Stack Overflow.
https://stackoverflow.com/questions/47362451/creating-a-dictionary-map-in-coq *)
