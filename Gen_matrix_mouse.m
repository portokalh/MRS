clc;
clear;

load ss1.mat;

ss1=reshape(ss1,128,128,256,5);
ss1=ss1(5:115,21:114,34:233,:);
ss1=reshape(ss1,111*94*200,5);
i=1;
for i8=1:1:200
    for i7=1:1:94 
        for i6=1:1:111
            ss1(i,6:8)=[i6 i7 i8];
            i=i+1;
        end
    end
end

data = ss1;
clear ss1;

ss6=(data - repmat(min(data,[],1),size(data,1),1))./(repmat(max(data,[],1)-min(data,[],1),size(data,1),1));

load labelr2_1;
ss6=horzcat(ss6,s1);
save slr1_noBl ss6;
clear all;


load ss2.mat;

ss1=reshape(ss2,128,128,256,5);
ss1=ss1(5:115,21:114,34:233,:);
ss1=reshape(ss1,111*94*200,5);
i=1;
for i8=1:1:200
    for i7=1:1:94 
        for i6=1:1:111
            ss1(i,6:8)=[i6 i7 i8];
            i=i+1;
        end
    end
end

data = ss1;
clear ss1;

ss6=(data - repmat(min(data,[],1),size(data,1),1))./(repmat(max(data,[],1)-min(data,[],1),size(data,1),1));

load labelr2_2;
ss6=horzcat(ss6,s1);
save slr2_noBl ss6;
clear all;



load ss3.mat;
ss1=reshape(ss3,128,128,256,5);
ss1=ss1(5:115,21:114,34:233,:);
ss1=reshape(ss1,111*94*200,5);
i=1;
for i8=1:1:200
    for i7=1:1:94 
        for i6=1:1:111
            ss1(i,6:8)=[i6 i7 i8];
            i=i+1;
        end
    end
end

data = ss1;
clear ss1;

ss6=(data - repmat(min(data,[],1),size(data,1),1))./(repmat(max(data,[],1)-min(data,[],1),size(data,1),1));

load labelr2_3;
ss6=horzcat(ss6,s1);
save slr3_noBl ss6;
clear all;



load ss4.mat;

ss1=reshape(ss4,128,128,256,5);
ss1=ss1(5:115,21:114,34:233,:);
ss1=reshape(ss1,111*94*200,5);
i=1;
for i8=1:1:200
    for i7=1:1:94 
        for i6=1:1:111
            ss1(i,6:8)=[i6 i7 i8];
            i=i+1;
        end
    end
end

data = ss1;
clear ss1;

ss6=(data - repmat(min(data,[],1),size(data,1),1))./(repmat(max(data,[],1)-min(data,[],1),size(data,1),1));

load labelr2_4;
ss6=horzcat(ss6,s1);
save slr4_noBl ss6;

clear all;


load ss5.mat;

ss1=reshape(ss5,128,128,256,5);
ss1=ss1(5:115,21:114,34:233,:);
ss1=reshape(ss1,111*94*200,5);
i=1;
for i8=1:1:200
    for i7=1:1:94 
        for i6=1:1:111
            ss1(i,6:8)=[i6 i7 i8];
            i=i+1;
        end
    end
end

data = ss1;
clear ss1;
ss6=(data - repmat(min(data,[],1),size(data,1),1))./(repmat(max(data,[],1)-min(data,[],1),size(data,1),1));

load labelr2_5;
ss6=horzcat(ss6,s1);
save slr5_noBl ss6;
clear all;





% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% % clc;
% % clear;
% % % 
% % % % load slice.mat;
% % % 
% % %slice=[80 120 144 159 195];
% % slice=[80	106	120	144	160	174	195];
% % 
% % % slice=[144];
% % % 
% % % load sss1.mat;
% % % for i=1:1:5
% % % s=reshape( sss1(:,i), 128,128,256);
% % % s=s(:,:,slice);
% % s1(:,i)=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % end
% % clear sss1 s;
% % 
% load sssl2.mat;
% for i=1:1:8
% s=reshape( ss6(:,i), 128,128,256);
% s=s(:,:,slice);
% s2(:,i)=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% end
% clear ss6 s;
% 
% % 
% % load sss4.mat;
% % for i=1:1:5
% % s=reshape( sss4(:,i), 128,128,256);
% % s=s(:,:,slice);
% % s4(:,i)=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % end
% % clear sss4 s;
% % 
% 
% load sssl5.mat;
% for i=1:1:8
% s=reshape( ss6(:,i), 128,128,256);
% s=s(:,:,slice);
% s5(:,i)=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% end
% clear ss6 s;
% % 
% % load sss3.mat;
% % for i=1:1:5
% % s=reshape( sss3(:,i), 128,128,256);
% % s=s(:,:,slice);
% % s3(:,i)=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % end
% % clear sss3 s;
% % 
% % load sss6.mat;
% % for i=1:1:5
% % s=reshape( sss6(:,i), 128,128,256);
% % s=s(:,:,slice);
% % s6(:,i)=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % end
% % clear sss6 s;
% % 
% % s_144_1245=vertcat(s1,s2,s4,s5);
% % save s_144_1245 s_144_1245;
% sl1_25=vertcat(s2,s5);
% save sl1_25 sl1_25;
% % 
% % 
% % 
% % 
% % 
% % % c=1;
% % % i=6;
% % % 
% % %     opt=[num2str(i) '_T2.img'];
% % %     v=spm_vol(opt);
% % %     s=spm_read_vols(v);
% % %     s1=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % %     clear s v;
% % %     
% % %     
% % % %     opt=[num2str(i) '_T2.img']
% % % %     
% % % %     fid=fopen(opt);
% % % %     a1=fread(fid, [128 128]);
% % % % %     label(:,:,c)=a;
% % % % %     c=c+1;
% % % % %     clear a;
% % %     
% % %     
% % %     opt=[num2str(i) '_PD.img'];
% % %     v=spm_vol(opt);
% % %     s=spm_read_vols(v);
% % %     s2=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % %     clear s;
% % %     
% % %     opt=[num2str(i) '_Dx.img'];
% % %     v=spm_vol(opt);
% % %     s=spm_read_vols(v);
% % %     s3=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % %     clear s;
% % %     
% % %     opt=[num2str(i) '_Dy.img'];
% % %     v=spm_vol(opt);
% % %     s=spm_read_vols(v);
% % %     s4=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % %     clear s;
% % %     
% % %     opt=[num2str(i) '_Dz.img'];
% % %     v=spm_vol(opt);
% % %     s=spm_read_vols(v);
% % %     s5=reshape( s, size(s,1)*size(s,2)*size(s,3), 1);
% % %     clear s;
% % %     
% % %     ss6=horzcat(s1, s2, s3, s4, s5);
% % %     
% % %     data = ss6;
% % % 
% % % sss6=(data - repmat(min(data,[],1),size(data,1),1))./(repmat(max(data,[],1)-min(data,[],1),size(data,1),1));
% % % 
% % % % save ss6 ss6;
% % % save ssss6 sss6;
% % % 
% % % 
% % % %     simatrix(:,:,c)=a;
% % % %     c=c+1;
% % % %     clear a;
% % % 
% % % % 
% % % % 
% % % % % fid=fopen('Cerebral_Cortex106.raw','r');
% % % % % a=fread(fid, [128 128]);