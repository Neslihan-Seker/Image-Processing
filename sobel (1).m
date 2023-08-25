img= imread("2.jpeg");
imshow(img);
title('orijinal görüntü');
figure;

g_1= rgb2gray(img);
imshow(g_1);
title('Siyah Beyaz Görüntü');
figure;

s=fspecial('sobel');
sobell=uint8(round(filter2(s,g_1)));
imshow(sobell);
title('Sobel filtre');