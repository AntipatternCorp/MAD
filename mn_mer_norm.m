clear
n = 2;
d = 100;
Y = mvnrnd(zeros(1,n),eye(n),d);% возвращает массив 100x2 из 100 2хменрных наблюдений
mu = [2 3];
sigma = [1 1.5; 1.5 3];
r = mvnrnd(mu,sigma,d);
[U,D] = eig(sigma);
L = U*(D^0.5);
%X = L*Y + mu;
X = Y*L' + mu;% в оригинале L*Y. но по умолчанию в матлаб наблюдение- это строка
%X1 = Y*L + mu;
plot(r(:,1),r(:,2),'+b')
hold on
plot(Y(:,1),Y(:,2),'+y')
plot(X(:,1),X(:,2),'+g')
%plot(X1(:,1),X(:,2),'+r')
grid on
