figure              
axis([-1 1, -1 1])      
x=zeros(1,3);
y=zeros(1,3);
for ii=1:3
    [x(ii),y(ii)] = ginput(1);       
end
s1=0.5*(abs(x(1)*y(2)-x(2)*y(1)));
s2=0.5*(abs(x(3)*y(2)-x(2)*y(3)));
s3=0.5*(abs(x(1)*y(3)-x(3)*y(1)));
s=0.5*(abs(x(1)*y(2)+x(2)*y(3)+x(3)*y(1)-x(2)*y(1)-x(3)*y(2)-x(1)*y(3)));
stotal=s1+s2+s3;
if((stotal-s)<0.000001)
    disp("�b�T�����ح�");
else
    disp("�b�T���Υ~��");
end
patch(x,y,'r')
hold on 
plot(-0.05:0.05,-0.05:0.05,'.b')