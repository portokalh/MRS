function [TrueFalseMat] = eval_accuracy(TrueLabel,predict_label_corrected);
nr=417; nc=243; nl=154; num_class=34;
% nr=111, nc=94, nl=199, num_class=23;
%reshape the one 1-dimension array into one 3-dimension array, the size is 111, 94, 199 respectively. 
predict_label=reshape(predict_label_corrected,nr,nc,nl);%111	94	199

%neighbor_correct is a function made by Min to smooth possible
%mis-classification by looking at the neighbor, it is sort of like
%deterministic ICM, simply looking at the all the nearest neighbor.

[predict_label_corrected]=neighbor_correct(predict_label);
predict_label_corrected=reshape(predict_label_corrected,nr*nc*nl,1);

TrueFalseMat=zeros(6,num_class);

for l=1:1:size(TrueLabel,1)
    if TrueLabel(l,1)==predict_label_corrected(l,1)
        TrueFalseMat(1,TrueLabel(l,1)+1)=TrueFalseMat(1,TrueLabel(l,1)+1)+1;
    end            
    TrueFalseMat(2,predict_label_corrected(l,1)+1)=TrueFalseMat(2,predict_label_corrected(l,1)+1)+1;
    TrueFalseMat(3,TrueLabel(l,1)+1)=TrueFalseMat(3,TrueLabel(l,1)+1)+1;%         
end %l
        
% thought there are 6 rows, 4 is accuracy, 5 is overlap, 6 is differences,
% there three are the keys for the assessment

for ii=1:1:num_class
    TrueFalseMat(4,ii)=100*(TrueFalseMat(1,ii)/TrueFalseMat(3,ii));
    TrueFalseMat(5,ii)=100*(TrueFalseMat(1,ii)/((TrueFalseMat(2,ii)+TrueFalseMat(3,ii))/2));
    TrueFalseMat(6,ii)=100*(abs(TrueFalseMat(2,ii)-TrueFalseMat(3,ii))/((TrueFalseMat(2,ii)+TrueFalseMat(3,ii))/2));
end

format short g;     

%TrueFalseMat=TrueFalseMat(:,[1 2 18 7 8 19 16 15 13 9 5 4 20 3 12 22 21 23 6 17 14 10 11]);

% tot=vertcat(tot, result, TrueFalseMat);
% %         result{i,:}={c1 g1 w1 accuracy(1) t1 TrueFalseMat};
% %         i=i+1;
% clear t1;
      