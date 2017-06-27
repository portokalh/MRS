function [ss]=Mix_over_sampling(ss6)

i=[15 14 12 11 21 20 22];  %%% Index of classes to be over-sampled
N=[2 3	3	2	13	24	39]-1; %%% Sampling ratio of each class
for j=1:size(i,2)   
    rows=find(ss6(:,9)==i(j));
    [leng bb]=size(rows);     
    rand_rows = ceil(leng.*rand(N(j)*leng,1));    
    a1=ss6(rows(rand_rows),:);
%   a1 = over_sampling(i(j),N(j)-1);
    ss=vertcat(ss6,a1);  
    j
end