# PLP 1: History and Hello World
![coq logo](https://user-images.githubusercontent.com/69715622/155648126-cd417df1-1c22-4d99-839b-db7e0bf79c53.png)

## History
Programming Language: *Coq*

Coq, first released in 1989, is a programming language generally attributed to Thierry Coquand, Gérand Huet, Christine Paulin-Mohring. Coq is developed alongside with the field of mathematical logic, with the purpose to verify the correctness and aid the construction of mathematical proofs. If you wish to learn more about the field of mathematical logic, you may want to check out [Logicomix: An Epic Search for Truth](https://readcomiconline.li/Comic/Logicomix/TPB?id=124918).

<p align="center">
  <img src="https://user-images.githubusercontent.com/69715622/155842197-c2bb62cd-8365-40e1-9c2d-b983f2f19df0.png" />
</p>
<p align="center">
  <i>"The above proposition is occasionally useful."</i> - Bertrand Russell, Alfred North Whitehead
</p>

## Why use Coq?

Coq has a very limited usage, mostly to verify the correctness of mathematical proofs. Some application includes proving the Four Color Theorem (2005) and creating CompCert (a C language compiler). In general, most mathematicians have never heard of proof assistants, let alone use them in their work. It is neither as mainstream nor useful as LaTex. That said, this may change in the future.

## Resources to learn Coq
- [Coq's Documentation](https://coq.inria.fr/distrib/current/refman/index.html)
- [Coq'Art](http://www.cse.chalmers.se/research/group/logic/TypesSS05/resources/coq/CoqArt/)
- [Mathematical Components](https://math-comp.github.io/#:~:text=Mathematical%20Components%20are%20libraries%20of,(Feit%2DThompson)%20Theorem.)

## Installing and Running Coq
To install Coq, you can check out [this guide from Cornell University](https://www.cs.cornell.edu/courses/cs4160/2020sp/install_coq.html). I personally use the <i>VSCoq</i> and <i>Proof General</i> method. Both of these methods require you to CoqIDE. This guide will only cover *CoqIDE* and *VSCoq*, as the Cornell guide have already explained *Proof General* very well.

#### Installing CoqIDE
First, go to https://coq.inria.fr/download. In **The Coq Platform**, click *Windows and macOS installers*. In the GitHub page, scroll down until you see **Assets**. You should download version 8.14, and remember to choose the file based on your OS. From there, installing CoqIDE should be easy. But remember where you install CoqIDE, as this will become relevant later on.

![coq installer](https://user-images.githubusercontent.com/69715622/155843457-c8f74942-cccb-4591-a316-7257b536913e.JPG)

#### Installing VSCoq
For VSCoq, first install CoqIDE to your computer. Then go to Visual Studio Code, click on View, then Extensions. You then install *Coq* and *VSCoq*. *Coq Elpi lang* is optional. After you finish installation, click on **Manage** (the gear symbol on the bottom left of VSC), then **Settings**. You then search for Coq. You scroll down until you see **Coqtop: Bin Path**. If you install Coq in C:\\, then type in C:\Coq\bin. Now VSCoq should operate correctly.

![coqtop](https://user-images.githubusercontent.com/69715622/155843603-a69edb6a-a73e-48f9-a247-826e35c6d1b6.JPG)

#### Programming Environment
You should use Emacs for Coq. This means you will have to install *Proof General* as well. Installing OPAM is a complicated process, even harder if your OS is Windows. *VSCoq* is not very reliable, but if you just want to take a quick look at Coq then it works (no pun intended). Emacs has a high learning curve, but so is Coq. 
<p align="center">
  <img src="https://user-images.githubusercontent.com/69715622/155843937-cef2e03c-a12e-4557-a743-4b984aee2409.png" width="25%" height="25%" />
</p>
<p align="center">
It appears to me that whoever is behind Proof General<br> is a weaboo as well. And no, I am <a href="https://github.com/yoshihiro503/generaltan">not <a href="http://proofcafe.org/wiki/Generaltan">joking</a>.<br> You can call her <a href="https://youzicha.tumblr.com/post/145836286669/in-lastest-version-of-proof-general-the-mascot-is">じぇねらるたん!</a>.
</p>

#### Running Coq
Running programs in Coq is a rather complicated process, and I don’t fully understand how it works. However, I can run some basic programs.
For Visual Studio Code, first click on File, then New File. Save the file as Hello World, type Coq. Then type in these lines of code.
  
<p align="center">
  <img src="https://user-images.githubusercontent.com/69715622/155844559-3beba53d-f012-40e5-8be3-5c869c8a5dd0.JPG" />
</p>

This is where things start to get strange. First try Run, then Run Without Debugging. Visual Studio Code should pop up this message.

<p align="center">
  <img src="https://user-images.githubusercontent.com/69715622/155844606-ec78a10b-4548-43e9-a6dd-835aab646203.JPG" />
</p>

And if you try to find a Coq debugger, no extension will be found. So how do we run the program? 
Click at the beginning of the first line, then press Alt + Down. A new window called ProofView will pop up on the right-hand side. 
The pointer on the left is your debugger.

<p align="center">
  <img src="https://user-images.githubusercontent.com/69715622/155844691-6fbd921b-2c9e-49a2-9920-955ce70f5cf9.JPG" />
</p>

To move the pointer down, press Alt + Down. By the time you reach line 4, “Hello World!" should appear on the output.

<p align="center">
  <img src="https://user-images.githubusercontent.com/69715622/155844726-619a6cef-78b3-4add-abb4-2daf1893bec7.JPG" />
</p>

You can also perform basic arithmetic by replacing “Hello World!” with 2 + 3.
  
To write comments, begin and close the comment with (**).
