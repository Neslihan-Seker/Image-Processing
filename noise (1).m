I=imread("2.jpeg");
s=rgb2gray(I);
imshow(s);
title('orijinal');
figure;


t1=imnoise(s,"gaussian",0.10);
imshow(t1);
title('gaussian');
figure;

t2=medfilt2(t1);
figure,imshow(t2);
title('medyan filtre');
