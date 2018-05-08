%% Demo
% add required path for installation
startup

% Image read
% [filename,pathname,filterindex]=uigetfile({'*.jpg';'*.bmp';'*.gif'},'Ñ¡ÔñÍ¼Æ¬');
% strjiance=[pathname filename]; 
% I = imread(strjiance);
I = imread('.\Test image\face01.jpg'); %test image include 'updown','leftright','complex','face01 - face16'

%% Compared Method 
J_AAQR = AAQR(I); 
J_MSRCR = multiscaleRetinex(I);
J_lime = lime(I);
J_mf = mf(I);
J_dong = dong(I);
J_srie = srie(I); 
J_npe = npe(I); 

subplot 241; imshow(I);        title('Original Image');
subplot 242; imshow(J_srie);   title('SRIE'); 
subplot 243; imshow(J_npe);    title('NPE'); 
subplot 244; imshow(J_dong);   title('DONG'); 
subplot 245; imshow(J_lime);   title('LIME'); 
subplot 246; imshow(J_mf);     title('MF'); 
subplot 247; imshow(J_MSRCR ); title('MSRCR'); 
subplot 248; imshow(uint8(J_AAQR));   title('AAQR'); 

 %% save enhancement images to '.\Output'
 save_lime=J_lime;
 save_mf=J_mf;
 save_dong=J_dong;
 save_srie=J_srie; 
 save_npe=J_npe;  
 save_msrcr=J_MSRCR; 
 save_aaqr=uint8(J_AAQR); 
    
 imwrite(save_lime,['Output\LIME.jpg']);
 imwrite(save_mf,['Output\MF.jpg']);
 imwrite(save_dong,['Output\Dong.jpg']);
 imwrite(save_srie,['Output\SRIE.jpg']); 
 imwrite(save_npe,['Output\NPE.jpg']); 
 imwrite(save_msrcr,['Output\MSRCR.jpg']);
 imwrite(save_aaqr,['Output\AAQR.jpg']);
 imwrite(I,['Output\Origin.jpg']);
  