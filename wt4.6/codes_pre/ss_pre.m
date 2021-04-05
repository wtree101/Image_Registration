%medfilt2 

input_num = 505;
input_name = ['D:\WORKPLACE\image_process\resized\resized\',num2str(input_num),'_same_size.jpg'];
fixed = imread(input_name);
%filter = imread('D:\WORKPLACE\image_process\resized\resized\phaze2\505_filter.jpg');
%downs = imresize(fixed, [256 256], 'bilinear'); %downsample get smaller
%figure
Hs = adapthisteq(fixed); %enlarge contrast
%imshow(Hs);
%imshowpair(Hs,fixed,'montage');

Hs_f = medfilt2(Hs,[5 5]);
for i = 1:20
Hs_f = medfilt2(Hs_f,[5 5]); 
end
Hs_g = imgaussfilt(Hs_f); %smoother
imshowpair(Hs_f,Hs_g,'montage');
title(num2str(input_num))
saveas(gcf,['D:\WORKPLACE\image_process\resized\resized\phaze2\outcome_single\pre\',num2str(input_num),'_compare_gau.jpg'],'jpg')
%Hs_f= adapthisteq(ss3);