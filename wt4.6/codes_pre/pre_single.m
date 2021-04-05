function I_pre = pre_single(I)

%filter = imread('D:\WORKPLACE\image_process\resized\resized\phaze2\505_filter.jpg');

Hs = adapthisteq(I);
%imshow(Hs);
%imshowpair(Hs,fixed,'montage');

Hs_f = medfilt2(Hs,[5 5]);
for i = 1:20
Hs_f = medfilt2(Hs_f,[5 5]);
end
I_pre = Hs_f;
end
