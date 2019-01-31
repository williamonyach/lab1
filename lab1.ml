(*
                              CS51 Lab 1
                     Basic Functional Programming
                             Spring 2019
 *)
(* Objective:

This lab is intended to get you up and running with the course's
assignment submission system, and thinking about core concepts
introduced in class, including:

    concrete versus abstract syntax
    atomic types
    first-order functional programming
 *)

(*======================================================================
Part 0: Testing your Gradescope Interaction

Labs and problem sets in CS51 are submitted using the Gradescope
system. By now, you should be set up with Gradescope.

........................................................................
Exercise 1: To make sure that the setup works, submit this file,
just as is, under the filename "lab1.ml" to the Lab 1 assignment on
the CS51 Gradescope web site.
........................................................................

When you submit labs (including this one) Gradescope will check that the
submission compiles cleanly, and if so, will run a set of unit tests
on the submission. For this part 0 submission, most of the unit tests
will fail (as you haven't done the exercises yet). But that's
okay. We won't be checking the correctness of your labs until the
"virtual quiz" this weekend. See the syllabus for more information
about virtual quizes, our very low stakes method for grading labs.

Now let's get back to doing the remaining exercises so that more of
the unit tests pass.

........................................................................
Exercise 2: So that you can see how the unit tests in labs work,
replace the "failwith" expression below with the integer 42, so that
exercise2 is a function that returns 42 (instead of failing). When you
submit, the Exercise 2 unit test should then pass.
......................................................................*)

let exercise2 () = failwith "exercise2 not implemented" ;;

(* From here on, you'll want to test your lab solutions locally before
submitting them at the end of lab to Gradescope. A simple way to do that
is to cut and paste the exercises into an OCaml interpreter, such as
utop, which you run with the command

    % utop

You can also use the more basic version, ocaml:

    % ocaml

We call this kind of interaction a "read-eval-print loop" or
"REPL". Alternatively, you can feed the whole file to OCaml with the
command:

    % ocaml < lab1.ml

to see what happens.
*)

(*======================================================================
Part 1: Concrete versus abstract syntax

We've distinguished concrete from abstract syntax. Abstract syntax
corresponds to the substantive tree structuring of expressions,
concrete syntax to the particulars of how those structures are made
manifest in the language's textual notation.

In the presence of multiple operators, issues of precedence and
associativity become important in constructing the abstract syntax
from the concrete syntax.

........................................................................
Exercise 3: Consider the following abstract syntax tree:

     ~-
      |
      |
      -
      ^
     / \
    /   \
   5     3

that is, the negation of the result of subtracting 3 from 5.  To
emphasize that the two operators are distinct, I've used the concrete
symbol ~- (an alternative spelling of the negation operation; see the
Pervasives module) to notate the negation.

How might this be expressed in the concrete syntax of OCaml using the
fewest parentheses? Replace the "failwith" expression with the
appropriate OCaml expression to assign the value to the variable
exercise1 below.
......................................................................*)

let exercise3 () = failwith "exercise3 not implemented" ;;

(* Hint: The OCaml concrete expression

   ~- 5 - 3

does *not* correspond to the abstract syntax above.

........................................................................
Exercise 4: Draw the tree that the concrete syntax "~- 5 - 3" does
correspond to. Check it with a member of the course staff if you'd
like.
......................................................................*)


(*......................................................................
Exercise 5: Associativity plays a role in cases when two operators
used in the concrete syntax have the same precedence. For instance,
the concrete expression 2 + 1 + 0 might have abstract syntax as
reflected in the following two parenthesizations:

2 + (1 + 0)

or

(2 + 1) + 0

As it turns out, both of these parenthesizations evaluate to the same
result (3).

Construct an expression that uses an arithmetic operator twice, but
evaluates to two different results dependent on the associativity of
the operator. Use this expression to determine the associativity of
the operator. Check your answer with a member of the course staff if
you'd like.
......................................................................*)

(*======================================================================
Part 2: Types and type inference

........................................................................
Exercise 6: What are appropriate types to replace the ??? in the
expressions below? Test your solution by uncommenting the examples
(removing the (* and *) at start and end) and verifying that no typing
error is generated.
......................................................................*)

(*  <--- After you've replaced the ???s, remove this start of comment line

let exercise6a : ??? = 42 ;;

let exercise6b : ??? =
  let greet y = "Hello " ^ y
  in greet "World!";;

let exercise6c : ??? =
  fun x -> x +. 11.1 ;;

let exercise6d : ??? =
  fun x -> x < x + 1 ;;

let exercise6e : ??? =
  fun x -> fun y -> x + int_of_float y ;;


and remove this whole end of comment line too. ---->  *)

(*======================================================================
Part 3: First-order functional programming

We'll start with some "finger exercises" defining simple functions
before moving onto more complex problems.

........................................................................
Exercise 7: Define a function square that squares its argument. We've
provided a bit of template code, supplying the first line of the
function definition but the body of the skeleton code just fails by
forcing an error using the built-in failwith function. Edit the code
to implement square properly.

Test out your implementation of square by modifying the template
code below to define exercise7 to be the square function applied
to the list containing the elements 5. You'll want to
replace the "0" with the correct function call.

Thorough testing is important in all your work, and we hope to impart
this view to you in CS51. Testing will help you find bugs, avoid
mistakes, and teach you the value of short, clear, testable
functions. In the file lab1_tests.ml, we’ve put some prewritten tests
for square using the testing method of Section 6.5 in the book. Spend
some time understanding how the testing function works and why these
tests are comprehensive. You may want to add some tests for other
functions in the lab to get some practice with automated unit testing.
......................................................................*)

let square (x : int) : int  =
  failwith "square not implemented" ;;

let exercise7 = 0 ;;

(*......................................................................
Exercise 8: Define a function say_hello that, given a name, creates a
greeting for that person. Gabby just got into town, so Gabby also
should be welcomed back. The name should be the same case as is input
to the function.

# say_hello "Katherine" ;;
- : string = "Hi Katherine. How are you today?"

# say_hello "niamh" ;;
- : string = "Hi niamh. How are you today?"

# say_hello "Gabby" ;;
- : string = "Hi Gabby. Welcome home! How are you today?"
......................................................................*)

let say_hello (name : string) : string =
  failwith "say_hello not implemented";;

(*......................................................................
Exercise 9: Define a function, small_bills, that determines, given a
price, if one will need a bill smaller than a 20 to pay for the
item. For instance, a price of 100 can be paid for with 20s (and
larger denominations) alone, but a price of 105 will require a bill
smaller than a 20 (for the 5 left over after the 100 is paid). We will
assume (perhaps unrealistically) that all prices are given as
integers. For this lab, you may assume all prices given are
non-negative.
......................................................................*)
let small_bills (price : int) : bool =
  failwith "small_bills not implemented" ;;

(*......................................................................
Exercise 10:

The calculation of the date of Easter, a calculation so important to
early Christianity that it was referred to simply by the Latin
"computus" ("the computation"), has been the subject of
innumerable algorithms since the early history of the Christian
church.

The algorithm to calculate the Computus function is given in Problem
26 in the book.

Given the year, write two functions that calculate the month
(computus_month) and day (computus_day) of Easter in that year via the
Computus function.

In 2018, Easter took place on April 1st. Your functions should reflect 
that:

  # computus_month 2018;;
  - : int = 4
  # computus_day 2018 ;;
  - : int = 1

......................................................................*)

let computus_month (year : int) : int =
  failwith "computus_month not implemented" ;;
let computus_day (year : int) : int =
  failwith "computus_day not implemented" ;;

(*======================================================================
Part 4: Utilizing recursion

........................................................................
Exercise 11: The factorial function takes the product of an integer
and all the integers below it. It is generally notated as !. For
example, 4! = 4 * 3 * 2 * 1. Write a function, factorial, that
calculates the factorial of an input. Note: the factorial function is
generally only defined on non-negative integers. For the purpose of
this exercise, you may assume all inputs will be positive.

# factorial 4 ;;
- : int = 24

......................................................................*)

let factorial (x : int) : int =
  failwith "factorial not implementated" ;;

(*......................................................................
Exercise 12: Define a recursive function that sums all the elements
between 0 and the input.

# sum_from_zero 5 ;;
- : int = 15
# sum_from_zero 100 ;;
- : int = 5050
# sum_from_zero ~-3 ;;
- : int = -6

(The sum from zero to 100 was famously if apocryphally performed by
the mathematician Carl Freiedrich Gauss as a seven-year-old, *in his
head*!)
......................................................................*)

let sum_from_zero (x : int) : int =
  failwith "sum_from_zero not implemented" ;;
