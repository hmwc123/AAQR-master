 %% vif  VISUAL INFORMATION FIDELITY 
% NOTE matlabPyrTools is required to run VIF metric (vif.m).
% You must run 'demo.m' frist
% add required path for installation
startup

%imdist read
imdist = double(imread('.\Output\Origin.jpg'));
imdist = rgb2gray(imdist);

%imorg read
%LIME
imorg_LIME = double(imread('.\Output\LIME.jpg'));
imorg_LIME = rgb2gray(imorg_LIME);
vif_LIME  = vifvec(imorg_LIME,imdist);
%MF
imorg_MF = double(imread('.\Output\MF.jpg'));
imorg_MF = rgb2gray(imorg_MF);
vif_MF  = vifvec(imorg_MF,imdist);
%DONG
imorg_DONG = double(imread('.\Output\DONG.jpg'));
imorg_DONG = rgb2gray(imorg_DONG);
vif_DONG  = vifvec(imorg_DONG,imdist);
%SRIE
imorg_SRIE = double(imread('.\Output\SRIE.jpg'));
imorg_SRIE = rgb2gray(imorg_SRIE);
vif_SRIE  = vifvec(imorg_SRIE,imdist);
%NPE
imorg_NPE = double(imread('.\Output\NPE.jpg'));
imorg_NPE = rgb2gray(imorg_NPE);
vif_NPE  = vifvec(imorg_NPE,imdist);
%MSRCR
imorg_MSRCR = double(imread('.\Output\MSRCR.jpg'));
imorg_MSRCR = rgb2gray(imorg_MSRCR);
vif_MSRCR  = vifvec(imorg_MSRCR,imdist);
%AAQR
imorg_AAQR = double(imread('.\Output\AAQR.jpg'));
imorg_AAQR = rgb2gray(imorg_AAQR);
vif_AAQR  = vifvec(imorg_AAQR,imdist);

%vif Result
vif_LIME = vif_LIME
vif_MF = vif_MF
vif_DONG = vif_DONG
vif_SRIE = vif_SRIE
vif_NPE = vif_NPE
vif_MSRCR = vif_MSRCR
vif_AAQR = vif_AAQR