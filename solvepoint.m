%Technician13
%2020.5.24
function [x2,y2]=solvepoint(x1,y1,x3,y3,height)
    x=x3-x1;
    y=0;
    z=y3-y1;
    
    %length of first link
    h=0;
    %length of second link
    hu=39.05;
    %length of third link
    hl=47.17;
    
    lyz=-z;
    lxz_=sqrt(lyz.*lyz+x.*x);
    n=(lxz_.*lxz_-hl^2-hu^2)/(2*hu);
    
    alpha=atan(x./lyz)-acos((hu+n)./lxz_);
    
    x2=x1+hu*sin(alpha);
    y2=height-hu*cos(alpha);    
end