xl = .1;
xu = .5;
i = 1;
e(i) = 10;

while(e(i)>0.01)

    xr = (xl + xu)/2;

    g_xl = sin(xl)-(1/sin(xl))+1;
    g_xr = sin(xr)-(1/sin(xr))+1;
    g_xu = sin(xu)-(1/sin(xu))+1;

    if(g_xl*g_xr<0)
        xu = xr;
        e(i + 1) = abs(xr - xl);
    end

    if(g_xu*g_xr<0)
        xl = xr;
        e(i + 1) = abs(xr - xu);
    end
    i = i + 1;
    if(g_xu*g_xr==0);
        xr = xr;
    end
end

tamanyo = size(e);
ite = 1:1:tamanyo(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white')
plot(ite,e,'color',[1,0,0],'linewidth',2)
grid on
xlabel('iterations')
ylabel('error')
legend('error')