clear all, close all, clc
a=imread('paisaje.jpg');
for i=1:10:255
    b=rgb2gray(a);
    figure(1);imshow(b);impixelinfo
    figure(2);imhist(b)
    r=a(:,:,1);g=a(:,:,2); b1=a(:,:,3);
    figure(3); subplot 121; imshow(r); subplot 122; imhist(r);
    figure(4); subplot 121; imshow(g); subplot 122; imhist(g);
    figure(5); subplot 121; imshow(b1); subplot 122; imhist(b1);
    a=a+i;
    pause;
end
