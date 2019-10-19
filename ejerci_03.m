clear , clc
y=('x^3-10*x-5')
f1=inline(y);
f=inline(y);
a=-4
b=-2
a1=-2
b1=0
error=0.001

c=0;c1=0 ;n1=0; n=0 ;xr1=(b1-a1)/2; xr = (b-a)/2;
fprintf('\t n \t\ta \t\t c \t\t b \t\t xr\n')
fprintf('\t n1 \t\ta \t\t c1 \t\t b1 \t\t xr1\n')

while ( xr > error)
    c = (a+b)/2;
    disp([n,a,c,b,xr])
    if (f(a)*f(c)<0)
        b=c;
    else a=c;
    end
    xr = (b-a)/2;
    n=n+1;
end
fprintf('la raiz es: %f\n',c)

while ( xr1 > error)
    c1 = (a1+b1)/2;
    disp([n1,a1,c1,b1,xr1])
    if (f(a1)*f(c1)<0)
        b1=c1;
    else a1=c1;
    end
    xr1 = (b1-a1)/2;
    n1=n1+1;
end
fprintf('la raiz es: %f\n',c1)