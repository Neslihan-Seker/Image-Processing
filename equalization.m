I= imread('18.jpeg');

imshow(I);title 'Original Görüntü';figure;

imhist(I); title ("Orijinal Görüntü Histogramı");figure;

J=histeq(I);
imshow(J);title 'Eşiklenmiş Görüntü';
figure,imhist(J); title ("Eşiklenmiş Görüntü Histogramı")
