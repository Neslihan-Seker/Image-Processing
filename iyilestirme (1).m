s=imread("18.jpeg");
t=rgb2gray(s);
a=imnoise(t,"gaussian",0.10);
imshow(a);
r=size(a,1);
c=size(a,2);
b=double(a);

for i=1:r
    for t=1:c
        %köşe noktalar
        if(i==1 && t==1)
            b(i,t)=round((b(i+1,t)+b(i+1,t+1)+b(i,t+1))/3);
        elseif (i==r && t==1)
             b(i,t)=round((b(r-1,1)+b(r-1,2)+b(r,2))/3);

        elseif (i==1 && t==c)
             b(i,t)=round((b(1,c-1)+b(2,c-1)+b(2,c))/3);
        elseif (i==r && t==c)
             b(i,t)=round((b(r-1,c-1)+b(r-1,c)+b(r,c-1))/3);

         %Kenarlar
        elseif (i==1 && t~=c && t~=1)
             b(i,t)=round((b(1,t-1)+b(1,t+1)+b(2,t-1)+b(2,t)+b(2,t+1))/5);
        elseif (i==r && t~=c && t~=1)
              b(i,t)=round((b(r,t-1)+b(r,t+1)+b(r-1,t-1)+b(r-1,t)+b(r-1,t+1))/5);
        elseif (t==1 && i~=r && i~=1)
              b(i,t)=round((b(i-1,1)+b(i+1,1)+b(i-1,2)+b(i,2)+b(i+1,2))/5);
        elseif (t==c && i~=r && i~=1)
              b(i,t)=round((b(i-1,c-1)+b(i,c-1)+b(i+1,c-1)+b(i-1,c)+b(i+1,c))/5);
           %orta noktalar
        else
              b(i,t)=round((b(i-1,t-1)+b(i-1,t)+b(i-1,t+1)+b(i,t-1)+b(i,t+1)+b(i+1,t-1)+b(i+1,t)+b(i+1,t+1))/8);
        end
    end
end
b=uint8(b);
figure,imshow(b);








