Before running the codes, SPM and libsvm toolbox for Matlab need to be installed 
%
%Neuroimage. 2009 Jul 1;46(3):717-25. doi: 10.1016/j.neuroimage.2009.02.012. Epub 2009 Feb 21.
%Automated segmentation of mouse brain images using extended MRF.
%Bae MH1, Pan R, Wu T, Badea A.

%
File list:

eval_accuracy.m ......Evaluate Accuracy
Gen_CV_set.m ......Generate testing dataset
Gen_CV_MRS_trainset.m ......Generate Training dataset
Gen_image_matrix.m ......convert .img files to matlab data matrix
Gen_matrix_mouse.m ......generate the input data matrix
Mix_over_sampling.m ...... Mixed Ratio Sampling
over_sampling.m ...... Simple over Sampling
run_MRS_SVM_cv.m ...... MRS-SVM 


1. Convert Original Image files to Data Matrix:
  1.1 Run 'Gen_image_matrix.m' to convert .img files to matlab data matrix
  1.2 Run 'Gen_matrix_mouse.m' to generate the input data matrix for following procedure.

2. Prepare MRS or simple over-sampling training set.
  2.1 Run 'Gen_CV_MRS_trainset.m': using the function,'Mix_over_sampling' or 'over_sampling', this code creates the MRS or simple over-sampling training set.

3. Train and test the MRS-SVM model using 5-fold cross validatioin(CV).
  3.1 Run 'run_MRS_SVM_cv.m'
  this code runs MRS-SVM with 5-fold CV. You need to specify C and gamma values. When test=1, mouse 1 is the testing set and mouse 2,3,4,5 are the training set. you need to specify the part of file name of training set. All the File name of training set start with 'slr'+index of mouse (e.g.'slr1_noBl_mix9').When you need the Mix-ration sampled data set, specify trn='_noBl_mix9'. When you need the 1k sampled dataset with location prior feature, specify trn='_noBl_1k_with_prob'.