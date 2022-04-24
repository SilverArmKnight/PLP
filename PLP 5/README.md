# PLP 5: Objects and Classes

## Does Coq support objects?

Being a functional programming language, Coq does not support objects. That said, Coq does support types, which is sort of similar to objects. 
The fact that Coq does not support objects will influence the answers to the next few questions. 
Here's an example of an object-like thing you can implement in Coq.

```coq
(* Create an object called day. *)
Inductive day : Type :=
  | monday
  | tuesday
  | wednesday
  | thursday
  | friday
  | saturday
  | sunday.
  
(* Instantiate an object type day. *)
Definition begin_of_week: day := monday.
Print begin_of_week.
```

## Does Coq have standard methods for functions?

While you can create functions that accept typed objects as parameters, my understanding is that these typed objects don't "own" these functions.
What this means is that you cannot give object functions as if they are unique to that object. Coq does not support object-oriented programming like
Python or Java, so class-based methods like toString() do not exist. However, you can convert the type of your object, albeit having to import libraries.

```coq
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
  
Compute next_weekday begin_of_week.
```

## How does inheritance work in Coq?

Coq is not an object-oriented programming language, so it should not support inheritance.
