# Question 1

Determine the highest normal form of this relation scheme. The relation scheme student Performance (StudentName, CourseNo, EnrollmentNo, Grade) has the following functional dependencies:
StudentName, courseNo → grade

RollNo, courseNo → grade

StudentName →EnrollmentNo

EnrollmentNo →StudentName

# Answer

Here prime attributes are = EnrollmentNo , CourseNo , StudentName

Non-prime attributes are = grade

The functional dependencies satisfies till 3NF but in BCNF StudentName →EnrollmentNo, EnrollmentNo →StudentName failed because both are not super key.

# Question 2

Suppose you are given a relation R= (A, B, C, D, E ) with the following functional dependencies:{CE →D, D→B, C →A}

a. Find all candidate keys.

b. Identify the best normal form that R satisfies (1NF, 2NF, 3NF, or BCNF).

c. If the relation is not in BCNF, decompose it until it becomes BCNF. At each step, identify a new relation, decompose and re-compute the keys and the normal forms they satisfy.

# Answer

a . Candidate key = CE

b. 1NF because in 2NF it failed because C->A has partial dependency.

c.

# Question 3

You are given the following set F of functional dependencies for relation R(A, B, C, D, E, F): F={ABC →D, ABD→E,CD→F,CDF →B,BF →D} a. Find all keys of R based on these functional dependencies.

b. Is this relation in Boyce-Codd Normal Form? Is it 3NF? Explain your answers.

# Answer

(a)

(A,B,C)+ = {A,B,C,D,E,F}

(A,C,D)+ = {A,B,C,D,E,F}

Candidate keys:

{A,B,C}, {A,C,D}

Super Keys:

{A,B,C}, {A,C,D}, {A,B,C,D}, {A,B,C,E}, {A,B,C,F}, {A,C,D,E},{A,C,D,F}, {A,B,C,D,E}, {A,B,C,D,F}, {A,C,D,E,F}, {A,B,C,E,F},{A,B,C,D,E,F}

(b)

The relation is not in Boyce-Codd Normal Form and not in 3NF as it is not in 2NF. The relation is not in 2NF because of partial dependency CD→F.

# Question 4

Write the advantages and disadvantages of normalization.

# Answer

Advantage:

It makes database and application design processes much more flexible.
Disadvantages:

It requires a detailed database design

# Question 5

Determine the decomposition. Consider the schema R = (S T U V) and the dependencies S → T, T → U, U → V, and V → S. Let R = (R1 and R2) be a decomposition such that R1 ∩ R2 ≠ ∅.


# Answer

S+ = STUV

T+ = STUV

U+ = STUV

V+ = STUV

All the attributes of the relation R are candidate keys.

We can perform lossless decomposition of the relation R into R1(S, T, U) and R2(S, V). Clearly, R1 ∩ R2 ≠ ∅ because R1 ∩ R2 = U .