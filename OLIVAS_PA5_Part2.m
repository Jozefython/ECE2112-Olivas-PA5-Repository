A = [3     4       -3      pi      1;
     1    -1        5     -4      6;
     3   -sqrt(5)  -1      7     -9;
     7     4       -7      8      2;
     9    csc(3)   -11   -6/5     2]

B = [1; 12; -7; 2; 0]

inver = inv(A)*B

C = length(B);
cram = zeros(C,1);

for i = 1:C
    Ai = A;
    Ai(:,i) = B;
    cram(i) = det(Ai)/det(A);
end

cram
