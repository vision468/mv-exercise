
A = [1,3,5,7];
B = [2,4,6,8];
C = zeros(1, length(A)); 
j = 1;
for i = 1:length(A)
    C(j) = A(i);
    j = j + 1;
    C(j) = B(i);
    j = j + 1;
end

disp(' C:');
disp(C);
