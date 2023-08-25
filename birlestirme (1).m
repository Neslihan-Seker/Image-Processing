A=imread('27.jpeg');
B=imread('37.jpeg');
I=imread('21.jpeg');
figure,imshow(A);title('1.görüntü');
figure,imshow(B);title('2.görüntü');
figure,imshow(I);title('3.görüntü');

A= imresize(A,[size(B,1),size(B,2)]);
I= imresize(I,[size(B,1),size(B,2)]);

C=A*0.9+B*0.2;
F=C+I*0.2;
figure,imshow(F); title('Birleştirilmiş Görüntü');

