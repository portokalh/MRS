% % % Using the function, 'over-sampling', this code creates the simple over-sampling training set
% % % When you need MRS training set, uncomment the ‘Mix-ratio sampling’ part.
% % % When you need simple over-sampling training set, uncomment the ‘simple over-sampling’ part.


% %%%%%% Simple over-sampling
% clear;
% load slr1_noBl.mat;
% ss=over_sampling(ss6);
% save slr1_noBl_over2.mat ss;
% 
% 
% % clear;
% % load slr2_noBl.mat;
% % ss=over_sampling(ss6);
% % save slr2_noBl_over2.mat ss;
% % 
% % 
% % clear;
% % load slr3_noBl.mat;
% % ss=over_sampling(ss6);
% % save slr3_noBl_over2.mat ss;
% % 
% % 
% % clear;
% % load slr4_noBl.mat;
% % ss=over_sampling(ss6);
% % save slr4_noBl_over2.mat ss;
% % 
% % 
% % clear;
% % load slr5_noBl.mat;
% % ss=over_sampling(ss6);
% % save slr5_noBl_over2.mat ss;
% % 
% % %%%% End of simple over-sampling
% 
% 
% 
%%%%% Mix-ratio sampling
clear;
load slr1_noBl.mat;
ss=Mix_over_sampling(ss6);
save slr1_noBl_mix9.mat ss;


clear;
load slr2_noBl.mat;
ss=Mix_over_sampling(ss6);
save slr2_noBl_mix9.mat ss;


clear;
load slr3_noBl.mat;
ss=Mix_over_sampling(ss6);
save slr3_noBl_mix9.mat ss;


clear;
load slr4_noBl.mat;
ss=Mix_over_sampling(ss6);
save slr4_noBl_mix9.mat ss;


clear;
load slr5_noBl.mat;
ss=Mix_over_sampling(ss6);
save slr5_noBl_mix9.mat ss;

%%% End of Mix-ratio sampling
% 
% 
% 
% 
% 








% for j=1:22
%     ta(j,1)=j;
%     ta(j,2)=length(find(ss(:,9)==j));
% end






% function [a1] = over_sampling(i,N)
% rows=find(ss6(:,9)==i);
% [leng bb]=size(rows);     
% rand_rows = ceil(leng.*rand(N*leng,1));    
% a1=ss6(rows(rand_rows),:);
% 
% 
% function [ss6] = whichCase(cases)
% switch cases
%    case 1
%       load ssslr1_noBl;      
%    case 2
%       load ssslr2_noBl;   
%    case 3
%       load ssslr3_noBl;      
%    case 4
%       load ssslr4_noBl;  
%    otherwise
%       load ssslr5_noBl;  
% end
% 
% 
% 
% 
% 
% 
% 
% ind=find(aa(:,9)~=11 & aa(:,9)~=12 & aa(:,9)~=14 & aa(:,9)~=20 & aa(:,9)~=21 & aa(:,9)~=22);
%  aa=aa(ind,:);
%  ssslr146_noBl_mix=aa;
%  ind=find(bb(:,9)==11); 
%  x=bb(ind,:);
%  ssslr146_noBl_mix=vertcat(ssslr146_noBl_mix,x);
%  
%  ind=find(bb(:,9)==21); 
%  x=bb(ind,:);
%  ssslr146_noBl_mix=vertcat(ssslr146_noBl_mix,x);
%  
%  
%  
%  
%  
%  ind2=find(bb2(:,9)==k); 
%  bb=bb(ind2,:);
%  ind3=find(cc(:,9)==14 & cc(:,9)==12 & cc(:,9)==11 & cc(:,9)==21); 
%  cc=cc(ind3,:);
%  ssslr146_noBl_mix=vertcat(aa,bb,cc);
%  
%  
%  save ssslr146_noBl_mix ssslr146_noBl_mix;