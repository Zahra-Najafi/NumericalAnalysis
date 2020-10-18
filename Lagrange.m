%% --------------------LAGRANGE INTERPOLATION METHOD--------------------
%%
%% ----------INITIALIZATION----------
xi=input('\n Enter xi :\n');
fi=input('\n Enter a fi : \n');
X=input('\n Enter a x : \n');
disp('o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o');
%% FOR EXAMPLE : xi=[-1 0 3] , fi=[8 -2 4] , X=1
%% ----------Making LAGRANGE POLYNOMIALS----------
syms x;
n=length(xi);     % (OR --> n=length(fi) )
L=cell(1,n);
for j=1:n
    l=1;
    xj=xi(j);
for i=1:n 
    if xj~=xi(i)
        l=l*(x-xi(i))/(xj-xi(i));
    end   
end
L{j}=l;
end
%% ----------DISPLAY OF LAGRANGE POLYNOMIALS----------
for k=1:n
    txt=['L',num2str(k),'='];
    disp(txt);
    disp(L{k});
    disp('o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o');
end
%% ----------CALCULATE THE INTERPOLATED POLYNOMIAL USING LAGRANGE POLYNOMIALS----------
p=0;
for t=1:n
    p=p+fi(t)*L{t}; 
end
p(x)=p;
disp('p(x)=');
disp(p(x));
disp('o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o---o');
%% ----------THE VALUE OF INTERPOLATION POLYNOMIAL IN ONE POINT----------
y=p(X);
disp('y=');
disp(y);
axis([1,8,1,15]);
plot(xi,fi,'b');
hold on;
for i=1:n
plot(xi(i),fi(i),'--gs',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','c',...
    'MarkerFaceColor',[0.25,0.25,0.25]);
end