figure              
axis([-10 10, -10 10])      
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
if((stotal-s)<10^-5)
    disp("在三角形裏面");
else
    disp("在三角形外面，用鍵盤操控三角形讓原點進去");
end
patch(x,y,'r')
hold on
plot(-0.05:0.05,-0.05:0.05,'.b')
if((stotal-s)>10^-5)
    while 1
        [~, ~, b] = ginput(1);
        if b== 28
            %disp("left");
            x(1)=x(1)-0.5;
            x(2)=x(2)-0.5;
            x(3)=x(3)-0.5;
        elseif b==29
            %disp("right");
            x(1)=x(1)+0.5;
            x(2)=x(2)+0.5;
            x(3)=x(3)+0.5;
        elseif b==30
            %disp("up");
            y(1)=y(1)+0.5;
            y(2)=y(2)+0.5;
            y(3)=y(3)+0.5;
        elseif b==31
            %disp("down");
            y(1)=y(1)-0.5;
            y(2)=y(2)-0.5;
            y(3)=y(3)-0.5;
        end

        s1=0.5*(abs(x(1)*y(2)-x(2)*y(1)));
        s2=0.5*(abs(x(3)*y(2)-x(2)*y(3)));
        s3=0.5*(abs(x(1)*y(3)-x(3)*y(1)));
        s=0.5*(abs(x(1)*y(2)+x(2)*y(3)+x(3)*y(1)-x(2)*y(1)-x(3)*y(2)-x(1)*y(3)));
        stotal=s1+s2+s3;
        if((stotal-s)<10^-5)
            disp("成功了!原點在裡面");
        end
        clf
        axis([-10 10, -10 10])      
        patch(x,y,'r')
        hold on
        plot(-0.05:0.05,-0.05:0.05,'.b')
    end
end
     
     