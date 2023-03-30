-- 1. Determine the highest normal form of this relation scheme.
-- The relation scheme student Performance (StudentName, CourseNo, EnrollmentNo, Grade) has
-- the following functional dependencies:
-- StudentName, courseNo → grade
-- RollNo, courseNo → grade
-- StudentName →EnrollmentNo
-- EnrollmentNo →StudentName






-- 2. Suppose you are given a relation R= (A, B, C, D, E ) with the following functional
-- dependencies:{CE →D, D→B, C →A}
-- a. Find all candidate keys.
-- b. Identify the best normal form that R satisﬁes (1NF, 2NF, 3NF, or BCNF).
-- c. If the relation is not in BCNF, decompose it until it becomes BCNF. At each step, identify a
-- new relation, decompose and re-compute the keys and the normal forms they satisfy.
-- 3. You are given the following set F of functional dependencies for relation R(A, B, C, D, E, F):
-- F ={ABC → D, ABD→E,CD→F,CDF →B,BF →D}
-- a. Find all keys of R based on these functional dependencies.
-- b. Is this relation in Boyce-Codd Normal Form? Is it 3NF? Explain your answers.
-- 4. Write the advantages and disadvantages of normalization.
-- 5. Determine the decomposition.
-- Consider the schema R = (S T U V) and the dependencies S → T, T → U, U → V, and V → S.
-- Let R = (R1 and R2) be a decomposition such that R1 ∩ R2 ≠ ∅ .