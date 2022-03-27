# PLP 3: Selection Control Structures

## Conditional Statement

Like many other programming languages, the Boolean values in Coq are

```coq
true && false
```

#### Types of Conditional Statement
Coq has two types of conditional statements. The first is your vanilla conditional statement

```coq
if ... then ... else
```

The second is a bit unusual, called a pattern-matching construct [1]. The first conditional statement is an extension of the second one.

```coq
match e_1 with
  true => e_2
| false => e3
end
```

Personally, I have never tried using the second type of conditional statement, due to it being too foreign to me compared to other programming langauges. 
Coq textbooks in general don't dive deep into the "fundamental" things like this, but focus more on type theory and proofs. As such, my answers to these
questions are also limited.

#### How does Coq delimit block codes in selection control statements?
I was unable to find any discussions or resources that talk about this. However, my guess is that Coq relies on keywords like 
"if", "then", "else", "match" and "end" to delimit and parse codes.

#### Does Coq use short-cirrcuit evaluation?
Again, I was unable to find any discussions or resources about this. I have tried to test this myself in Coq, by doing something like this

```coq
Compute if (4 > 3) || false then 8 else 9.
```

What this should is that if the condition is true, then print 8. Else print 9. Instead the terminal gives me this.

```coq
Error: (diff) The term "4 > 3" has type "Prop" while it is expected to have type "bool".
```

The reason I do not try to fix this error is that I myself am not proficient in Coq. "Prop" is essentially a term in the Type Hierarchy, and it's not something
that usually appears in other programming languages. As I am not good enough to fix this error, I won't try to answer whether Coq implements short-circuit for now. 

Similarly, I don't know enough about Coq to answer how it circumvents the "dangling else" problem. As such, I won't be answering them here.

#### Switch statement

Coq does not support switch statement, but I am able to find [this Github repository](https://github.com/vzaliva/coq-switch) that is a plugin allowing users
to use switch statement. This plugin does not seem to be mainstream among the Coq community (there are like 3 of us), so I won't be making any guess on the
use of "break" and "continue" statements.

## References
<ul>
  <li> [1] Yves Bertot. Coq in a Hurry. 3rd cycle. Types Summer School, also used at the University of
Goteborg, Nice,Ecole Jeunes Chercheurs en Programmation,Universite de Nice, France. 2016, pp.49.
ffinria-00001173v6f </li>
  <li> [2] https://github.com/vzaliva/coq-switch </li>
</ul>
