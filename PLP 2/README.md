# PLP 2: Names, Types and Binding

## Naming Convention

#### Reserved keywords

Coq does have reserved keywords. Examples include Check, Definition, Print etc. I am not able to find a comprehensive lists of reserved keywords, but they do exist.

#### Variable names

According to Coq documentation [1], identifiers, and by extension variables, are made up of letters, digits, _ and ‘. They must also not start with a digit or ‘. 
The string "_" is reserved for anonymous variables. Hence it is not allowed to be used as a stand-alone variable.

As far as I am aware, there is no commonly accepted naming conventions among the Coq community. There are [two](https://github.com/coq/stdlib2/issues/2) [discussions](https://www.reddit.com/r/Coq/comments/mdhp1y/naming_conventions/) that talk about this topic.

## Typing

Please refer to plp2.v for code example. I was not able to implement a dictionary in Coq. If you can do that, please enlighten me.

#### Characteristic

Coq is statically typed. You have to declare an identifier with a type.

Coq is strongly typed. It does not allow implicit conversions between unrelated types. For example, you cannot perform 
```coq 
Check (mult 3 (-45)%Z).
```
as “mult” is an operation that multiplies two natural numbers. This command tries to multiply a natural number with an integer, which Coq does not allow.

From [this material](https://softwarefoundations.cis.upenn.edu/plf-current/References.html), it seems data in Coq are immutable. For example, the second line of this program gives you 
```coq
Error: y already exists.
```

```coq
Definition y := 8 : nat.
Definition y := 9 : nat.
```

#### Operations on variables
There are too many operators available for each data type, so I won’t be listing them all. 
For integers, run this command in your preferred environment to see how many operators there are just for integers.

```coq
Require Import ZArith.
Print Scope Z_scope.
```

## Limitation

Coq has a property called *strong normalization*, meaning computation will always terminate. 
However, in order for a programming language to describe all computable functions, it must also describe functions that do not terminate.
What this means is that there are some computable functions Coq can describe but cannot perform. However, Coq can still describe every computable functions [2].

## Built-in Complex Data Types

Hilariously, Coq supports a data type called Natural numbers. Yes, freaking natural numbers.
Coq takes this so seriously that it does not allow multiplication between natural numbers and integers. 
You need to convert one type of number to another and perform the multiplication version of that data type.
```coq 
Check (mult 3 (-45)%Z).
```

## References
<ul>
  <li> [1] <a href="url">https://coq.inria.fr/refman/language/core/basic.html#syntax-and-lexical-conventions</a></li>
  <li> [2] Pierre Castéran, Yves Bertot. Interactive theorem proving and program development. Coq'Art: The Calculus of inductive constructions.. Springer Verlag, pp.470, 2004, Texts in Theoretical Computer Science. ⟨hal-00344237⟩</li>
</ul>
