%%% This code transforms a brain image (.img) to a numeric matrix.

clc;clear all;

%% add spm path
addpath('/spm8');

%% add libsvm path;
addpath('/libsvm');

%% specify the original img folder
T2=dir('/home/data/T2_*.img');
PD=dir('/home/data/PD_*.img');
Dx=dir('/home/data/Dx_*.img');
Dy=dir('/home/data/Dy_*.img');
Dz=dir('/home/data/Dz_*.img');
fnum=length(T2);

%% generate numeric data file
for i=1:fnum;
    F1 = strcat('/home/data/',T2(i).name);
    F2 = strcat('/home/data/',PD(i).name);
    F3 = strcat('/home/data/',Dx(i).name);
    F4 = strcat('/home/data/',Dy(i).name);
    F5 = strcat('/home/data/',Dz(i).name);
    s=spm_read_vols(spm_vol(F1));   %%% 's' is the image matrix
    s1=reshape (s, size(s,1)*size(s,2)*size(s,3),1);
    s=spm_read_vols(spm_vol(F2));
    s2=reshape (s, size(s,1)*size(s,2)*size(s,3),1);
    s=spm_read_vols(spm_vol(F3));
    s3=reshape (s, size(s,1)*size(s,2)*size(s,3),1);
    s=spm_read_vols(spm_vol(F4));
    s4=reshape (s, size(s,1)*size(s,2)*size(s,3),1);
    s=spm_read_vols(spm_vol(F5));
    s5=reshape (s, size(s,1)*size(s,2)*size(s,3),1);
    
    ss1=horzcat(s1,s2,s3,s4,s5);
    matfile= strcat('/home/data/ss',num2str(i),'.mat');
    save(matfile,'ss1');
end