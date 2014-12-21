#lang scribble/manual

@title{The Heresy Programming Language}
@author{John S. Berry III}

The Heresy language is a functional Lisp/Scheme dialect implemented in Racket, with syntax inspired by the BASIC family of programming languages. It's principle goals are to provide a simple core language for BASIC and other programmers to experiment with and learn how to program functionally. 

This document will detail the general philosophy of the Heresy language, such as exists, as well as the language syntax and functions. 

The Heresy language was created by John S. Berry III with additional contributions from many others in the Racket community. 

Heresy and this documentation are Copyright (c) 2014 John S. Berry III and released under the terms of the GNU LGPL.

@section{The Heresy Rules}

The Heresy language is developed according to a few basic "ground rules," which the author and contributors attempt to follow in developing new features and functions for the language. These are as follows:

@itemlist[#:style 'ordered
@item{@bold{Heresy is BASIC} --- Heresy is inspired by BASIC, and aims to be at least somewhat easy for BASIC programmers to learn. Mostly this means we prefer BASIC names for functions over the Lisp name, and naming conventions like the $ for string functions.}

@item{@bold{Heresy is a Lisp} --- Heresy is still a Lisp, and loves simple syntax and s-expressions. While it makes use of some sugaring like literal keywords for certain common primitives, these are best used sparingly. Heresy is the Diet Coke of Evil, just one calorie, not quite evil enough.}

@item{@bold{Heresy is functional} --- Functional, but not Haskell. It is not intended solely as a vehicle for absolute functional purity. I love Haskell. You love Haskell. We don’t need to write another Haskell. Think more in terms of a lower-calorie, more intelligible Clojure.}

@item{@bold{Heresy is for learning} --- Heresy started as a learning project, a chance to learn how Lisp and functional programming really work on a practical level. I hope that, in time, it can be that for others as well, especially those who grew up with BASIC like myself and still sometimes struggle to get their head around the functional style. In particular, this means the Heresy-written portions of the source are generally written in as clear a manner as possible, as they are intended to be self-teaching.}

@item{@bold{Heresy is an experiment} --- Heresy is an experimental language. It’s very DNA is as a mad idea that came to life, and it’s development should be ready and willing to embrace new mad ideas and run with them. This is where carry came from, and I hope to have more mad ideas in the future.}

@item{@bold{Heresy is for everyone} --- As a statement of culture, the Heresy community welcomes the contribution of all people, who taste equally delicious to the jaws of mighty Cthulhu. No discrimination, harassment, or any other mistreatment of contributors on the basis of age, race, sexuality, or gender will @bold{ever} be tolerated by myself or anyone else who wishes to be part of this project.}]

@section{Heresy Syntax and Conventions}

Generally speaking, Heresy follows standard s-expression syntax as expected from any Lisp, being composed of parenthesized sequences of terms in Polish notation. Each sequence thus begins with an operator or function, and any number of arguments or additional s-expressions as needed.

There are however a few exceptions to usual expectations in the case of certain special forms like @racket[for], @racket[def], and @racket[if]. These make use of additional literal terms as part of their syntax, to provide more clarity and similarity to BASIC-style syntax.

In accordance with that goal, Heresy also follows certain naming conventions as a matter of style. Functions which produce a string value are appended with @racket[$], and in general where a naming conflict between two similar functions in Racket/Scheme and BASIC exists, prefer BASIC.

When borrowing BASIC syntax and naming for use in Heresy, the author has generally relied chiefly on QBASIC and ECMA BASIC for reference.

@section{Heresy Reference}

@subsection{Declarations}

def (fn)
let
fn
import rkt
require/provide

@subsection{Conditionals and Loops}

if
select
select case
for
do 
do loop
break
carry
cry

@subsection{Predicates and Logic}

list?
null?
zero?
eq?
symbol?
atom?
lat?
and or not else
True False Null

@subsection{Syntax and Evaluation}

quote
quasiquote
unquote
unquote-splicing
error
run
rem
def macro
apply

@subsection{Input and Output}

print (& lit)
?
input (stx)
using

@subsection{Lists}

list
join
head
tail
map
filter
len
foldr
foldl
reverse
index
index*
inlst
left
right
mid
slice
append1
append
subst
heads
sort
zip
zipwith

@subsection{Strings}

=$
&
list$
str$
empty$?
len$
list&
head$
tail$
left$
right$
mid$
slice$
instr
split

@subsection{Math}

+ - / * = < >
^
mod
abs
one?
even?
odd?
sgn
inc
dec
exp
sin
cos
tan

@subsection{Things}

describe
send
Self

@subsection{Theory}

Y
partial
compose