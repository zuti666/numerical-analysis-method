clear all;
x=[-3.0 -2.0 -1.0 0 1.0 2.0 3.0]';
y=[-0.2785 0.8959 -1.5651 3.4565 3.0601 4.8568 3.8982]';
[x,i]=sort(x);
y=y(i);
xi=min(x)+[0:100]/100*(max(x)-min(x));
for i=1:4
    N=2*i-1;
    [th,err,yi]=wlsfit(x,y,N,xi);
    subplot(220+i);
    plot(x,y,'r*');
    hold on;
    plot(xi,yi,'b:');
    title(['The ',num2str(N),'th Polynomial Curve Fitting']);
    grid on;
end


clear all;
x=[-3.0 -2.0 -1.0 0 1.0 2.0 3.0]';
y=[-0.2785 0.8959 -1.5651 3.4565 3.0601 4.8568 3.8982]';
for i=1:4
    N=2*i-1;
    [p,s]=polyfit(x,y,N);
    yi=polyval(p,x,s);
    subplot(220+i);
    plot(x,y,'r*');
    hold on;
    plot(x,yi,'b:');
    title(['The ',num2str(N),'th Polynomial Curve Fitting']);
    grid on;
end



    