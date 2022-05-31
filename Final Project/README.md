Here's my final project, where I try to prove 1^3 + 2^3 + ... + n^3 = (1 + 2 + 3 + ... + n)^2. Along the way, I prove some lemmas which are used in the final proof.
I refrain from commenting much in the file, because explaining the codes in details may double the number of lines, given that every line can be explained.

The general strategy to prove the above theorem is to prove another easier version of the proof: 1 + 2 + 3 + ... + n = n(n + 1)/2. We then substitute this result into
the recursive case for the final theorem we need to prove, and show that the left-hand side is equal to the right-hand side.
