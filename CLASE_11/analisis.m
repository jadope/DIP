function [b]=analisis(a)
    [a1,a2,a3,a4,a5]= componentes(a);
    figure(1);imshow([a1;a2;a3;a4;a5]); impixelinfo
    title(['rgb -hsv - cmy - kkk - lab']) %Se observa que la b de rgb, s, y y la b1 de lab, determinan el lunor melo.
    s=componente(a2, 2); lvl=graythresh(s); s1=im2bw(s,lvl)*255;%figure(20);imshow([s, s1]); impixelinfo
    b=componente(a1, 3); lvl=graythresh(b); b2=im2bw(b,lvl)*255;%figure(30);imshow([b,b2]);impixelinfo
    y=componente(a3, 3); lvl=graythresh(y); y1=im2bw(y,lvl)*255;%figure(40);imshow([y, y1]);impixelinfo
    b1=componente(a5, 3); lvl=graythresh(b1); b11=im2bw(b1,lvl)*255;%figure(50);imshow([b1, b11]);impixelinfo

    b=([s,s1;b,b2;y,y1;b1,b11]);
end