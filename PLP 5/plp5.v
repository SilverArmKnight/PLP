(* Programming Language Project 5.
Author: Duy Anh Nguyen. *)

(* Create an object called day. *)
Inductive day : Type :=
  | monday
  | tuesday
  | wednesday
  | thursday
  | friday
  | saturday
  | sunday.

(* Functions that use the object day. *)
Definition next_weekday (d:day) : day :=
  match d with
  | monday    => tuesday
  | tuesday   => wednesday
  | wednesday => thursday
  | thursday  => friday
  | friday    => monday
  | saturday  => monday
  | sunday    => monday
  end.


(* Instantiate an object type day. *)
Definition begin_of_week: day := monday.
Print begin_of_week.

Compute next_weekday begin_of_week.
