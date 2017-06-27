clc; clear; tic
num_class=23;result=zeros(1,2);

c1=1000; g1=10; %%%% C and gamma values
test=1;  %%%%testing set
trn='_noBl_mix9';  %%%% part of file name of training set

opt=['-c ' num2str(c1) ' -b 0 -g ' num2str(g1)]; ss1=[];
for i=1:5       
    if i~=test
        [ss] = Gen_CV_set(i,trn);
        ss1=vertcat(ss1,ss); 
    end        
end
TrainLabel=ss1(:,9); TrainMat=ss1(:,[1 2 6 7 8]); clear ss1 ss;

model = svmtrain(TrainLabel, TrainMat, opt);   %%%%% Training
save model_slr_noBl_mix9_c1000_g10_test1 model
clear TrainLabel TrainMat;

t1=toc/60   %%%% Trainig time
% load  model\model_slr_5k_test3_c1000_g10_b;
% % i=1; tot=[]; predict_label_total=[];dec_values_total=[];

[ss6, s1] = Gen_CV_test_set(test, trn);
TrueLabel=ss6(:,9); TestMat=ss6(:,[1 2 6 7 8]); clear ss6;

% [predict_label, accuracy, dec_values] = svmpredict(TrueLabel, TestMat, model, ' -b 0'); 
[predict_label, accuracy] = svmpredict(TrueLabel, TestMat, model, ' -b 0');  %%% Testing

t2=toc/60   %%%% Testing time
a=s1;ind=find(s1>0);a(ind)=predict_label; clear ind;
[TrueFalseMat2] = eval_accuracy(s1,a);  %%%% s1=true label, a=predicted label  
% % clear predict_label s1 a;
result(1,1:2)=[t1 t2];

%%%% save the predicted label('a')
save predict_slr_noBl_mix9_c1000_g10_test1 a;



% % for i=1:22
% %     ta(1,i)=i;
% %     ta(2,i)=length(find(aa2==i));
% % end
% 
% 
% 
% 
% 
% 
