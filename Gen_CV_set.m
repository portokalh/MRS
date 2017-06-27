function [ss] = Gen_CV_set(cases, tt)

%%% k=index of the test set

tt='_noBl';

switch cases
   case 1
      op=['Data\slr' num2str(cases)]; opt=strcat(op, tt);
      load (opt); cases
   case 2
      op=['Data\slr' num2str(cases)]; opt=strcat(op, tt);
      load (opt); cases
   case 3
      op=['Data\slr' num2str(cases)]; opt=strcat(op, tt);
      load (opt); cases
   case 4
      op=['Data\slr' num2str(cases)]; opt=strcat(op, tt);
      load (opt); cases
   case 5
      op=['Data\slr' num2str(cases)]; opt=strcat(op, tt);
      load (opt); cases      
end



% ss1=[];
% for i=1:5   
%     cases=i;
%     if cases==k
%         cases=100;
%     end
%     switch cases
%        case 1
%           load Data\slr1_noBl_mix9.mat;
%           cases
%        case 2
%           load Data\slr2_noBl_mix9.mat;
%           cases
%        case 3
%           load Data\slr3_noBl_mix9.mat;
%           cases
%        case 4
%           load Data\slr4_noBl_mix9.mat;
%           cases
%        case 5
%           load Data\slr5_noBl_mix9.mat;
%           cases        
%     end
%     ss1=vertcat(ss1,ss);    
% end
% 
% 
% 



