# # Instructions for Assignment02
#
# ## Introduction
# 
# In this assignment,
# you will start to put the pieces together.
# Note: this file is runnable in its current state,
# but is incomplete.
# You can run the file from the command line,
# or use the VS Code julia extension to run individual lines.

# The following code is used for set up;
# there is no need to change it.
# If you _do_ change it to figure out what it's doing,
# make sure you change it back or your assignment may not work correctly

using Random
Random.seed!(42)

function generate_sequence(len)
    seq = join(rand(['A','C','G','T'], len))
    println("Your sequence is: ", seq)
    return seq
end

my_seq = generate_sequence(20)

# ## Question 1
# 
# The code above generates a random 20nt DNA sequence,
# and assigns it to the variable `my_seq`.
# What kind of data type is `my_seq` (eg Float64, Int64, String, or something else)?
# Assign the variable `question1` to the correct type.
#
# Hint1: rather than guess, you can just use the `typeof()` function.

question1 = ""

# Hint2: If you're having trouble, 
# note that your answer should not contain quotes.
# Eg. if you thing that `seq` has the type `MyType`,
# your code should read `question1 = MyType` and not `question1 = "MyType"`

# ## Question 2
# 
# The function bellow has a "doc string",
# which explains what the function should do.
# Many julia functions have doc strings, 
# which makes it easy to get help right from the REPL
# 
# Open a julia REPL and type `?`.
# You will see the `julia>` prompt change to `help?>`.
# Now type `println` and hit enter.
# The docstring of `println` is printed
# and you're returned to a julia prompt
#
# Evaluate the following function, including the docstring, in the REPL
# (that is, copy from the tripple quotes down to the "end"
# and paste it into the REPL, then hit enter)

"""
    question2(sequence)

Checks if `sequence` is a String.

Example
=======

```julia
julia> question2("hello")
true

julia> question2(1001)
false
```
"""
function question2()
    # put your code here
end

# At the moment, this function doesn't do what it says it should.
# Actually, it doesn't do anything. 
# Fix the function so that it takes one argument
# and returns `true` if the argument is a String,
# and returns `false` otherwise.
# You should be able to run the examples in the docstring
# and get the correct answer.
#
# Hint: You haven't explicitly encountered a way to check if a type is another type.
# Learning to search for answers is a key programming skill!
# Try searching "check if type is string julia".
# Typically, when I see search results, I prioritize in this order:
# 1. stackoverflow.com
# 2. docs.julialang.org
# 3. discourse.julialang.org
# 4. github.com

# ## Question 3
# 
# Let's try something a bit more complicated.
# The `question3()` function has a doc string,
# but is also incomplete. 
# I've writtten some code to get you started,
# complete it so that the examples work as expected in the docstring

"""
    question3(sequence)

Calculates the GC ratio of a DNA sequence.
The GC ratio is the ratio of G and C bases divided by the total length of the sequence.

Example
=======

```julia
julia> question3("AATG")
0.25

julia> question3("CCCGG")
1.0

julia> question3("ATTA")
0.0
```
"""
function question3(sequence)
    # throw an error if the string contains anything other than ACGT
    if any(c-> !in(c, ['A','C','G','T']), sequence)
        throw(ArgumentError("Sequence must only contain ACGT"))
    end

    # change line to assign `seqlength` to the length of `sequence` instead of `1`
    seqlength = 1

    # count the number of G's
    gs = count(==('G'), sequence)
    # count the number of C's
    cs = count(==('C'), sequence)

    return gs + cs / seqlength # something is wrong with this line...
end
# ## Question 4
# 
# This should be familiar by now.
#
# Hint: you do not need to re-write code if you already have it.
# That is, don't copy any code from `question3`,
# just call it!

"""
    question4(sequence)

Calculates the GC content of a DNA sequence
and prints it to the screen.

Example
=======

```julia
julia> question4("AATC")
Sequence: 
AATC
GC Content:
0.25

julia> question4("CCCGG")
Sequence:
CCCGG
GC Content:
1.0
```
"""
function question4(sequence)
    # Your code here
end

