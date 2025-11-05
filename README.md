
# PA5 - INTRODUCTION TO MATLAB
### KAROL JOZEF S. OLIVAS | 2ECE-C | ECE2112

---

## 1️⃣ PROBLEM 1

#### • Aside from the transpose command, there are two other operations that appear to do the same. These are the operators ‘ (apostrophe after the variable) and .’ (a dot and apostrophe after the variable). Determine the differences between these three operations by showing your program to the class.
### <img width="1283" height="200" alt="image" src="https://github.com/user-attachments/assets/4857b2d9-7bbf-451a-a93f-1724c9c19fd2" />

---

### Code:
```matlab

% Defining Matrices
A = [ 2 0 1 8 0 -2 ; 3 4 7 3 7 6 ; -6 4 -1 2 5 9 ] 
B = [ 3+2j -6-7j 1-j ; -5+2j 3+j 1+7j ; 4-3j 7+8j 3j ]

% Transposing in 3 ways for both Matrices
transpose(A), A', A.'
transpose(B), B', B.'

```

### Output:
```matlab

A =

     2     0     1     8     0    -2
     3     4     7     3     7     6
    -6     4    -1     2     5     9


B =

   3.0000 + 2.0000i  -6.0000 - 7.0000i   1.0000 - 1.0000i
  -5.0000 + 2.0000i   3.0000 + 1.0000i   1.0000 + 7.0000i
   4.0000 - 3.0000i   7.0000 + 8.0000i   0.0000 + 3.0000i

% transpose(A)
ans =

     2     3    -6
     0     4     4
     1     7    -1
     8     3     2
     0     7     5
    -2     6     9

% A'
ans =

     2     3    -6
     0     4     4
     1     7    -1
     8     3     2
     0     7     5
    -2     6     9

% A.'
ans =

     2     3    -6
     0     4     4
     1     7    -1
     8     3     2
     0     7     5
    -2     6     9

% transpose(B)
ans =

   3.0000 + 2.0000i  -5.0000 + 2.0000i   4.0000 - 3.0000i
  -6.0000 - 7.0000i   3.0000 + 1.0000i   7.0000 + 8.0000i
   1.0000 - 1.0000i   1.0000 + 7.0000i   0.0000 + 3.0000i

% B'
ans =

   3.0000 - 2.0000i  -5.0000 - 2.0000i   4.0000 + 3.0000i
  -6.0000 + 7.0000i   3.0000 - 1.0000i   7.0000 - 8.0000i
   1.0000 + 1.0000i   1.0000 - 7.0000i   0.0000 - 3.0000i

% B.'
ans =

   3.0000 + 2.0000i  -5.0000 + 2.0000i   4.0000 - 3.0000i
  -6.0000 - 7.0000i   3.0000 + 1.0000i   7.0000 + 8.0000i
   1.0000 - 1.0000i   1.0000 + 7.0000i   0.0000 + 3.0000i

```

### Explanation:

```
  

```
---

## 2️⃣ PROBLEM 2

#### • Solve the given linear equations simultaneously using two methods: (1) inverse method and (2) Cramer’s Rule
#### <img width="988" height="434" alt="image" src="https://github.com/user-attachments/assets/4f8a59c6-2de1-482e-8f1c-ff2fe86c733a" />

---

## 1. Inverse Method

### Code:
```matlab

A = [3     4       -3      pi      1;
     1    -1        5     -4      6;
     3   -sqrt(5)  -1      7     -9;
     7     4       -7      8      2;
     9    csc(3)   -11   -6/5     2]

B = [1; 12; -7; 2; 0]

inver = inv(A)*B

```

### Output:
```matlab

A =

    3.0000    4.0000   -3.0000    3.1416    1.0000
    1.0000   -1.0000    5.0000   -4.0000    6.0000
    3.0000   -2.2361   -1.0000    7.0000   -9.0000
    7.0000    4.0000   -7.0000    8.0000    2.0000
    9.0000    7.0862  -11.0000   -1.2000    2.0000


B =

     1
    12
    -7
     2
     0


inver =

    1.0000
    0.0000
    1.0000
   -0.0000
    1.0000

```

### Explanation:

```
```

---

## 2. Cramer's Rule

### Code:
```matlab

C = length(B);
cram = zeros(C,1);

for i = 1:C
    Ai = A;
    Ai(:,i) = B;
    cram(i) = det(Ai)/det(A);
end

cram

```

### Output:
```matlab

cram =

    1.0000
    0.0000
    1.0000
         0
    1.0000

```

### Explanation:

```
```

---

### All outputs can be seen in the MatLab Code file. Thank you.
