clear
n = 2;
d = 100;
Y = mvnrnd(zeros(1,n),eye(n),d);% ���������� ������ 100x2 �� 100 2�������� ����������
mu = [2 3];
sigma = [1 1.5; 1.5 3];
r = mvnrnd(mu,sigma,d);
[U,D] = eig(sigma);
L = U*(D^0.5);
%X = L*Y + mu;
X = Y*L' + mu;% � ��������� L*Y. �� �� ��������� � ������ ����������- ��� ������
%X1 = Y*L + mu;
plot(r(:,1),r(:,2),'+b')
hold on
plot(Y(:,1),Y(:,2),'+y')
plot(X(:,1),X(:,2),'+g')
%plot(X1(:,1),X(:,2),'+r')
grid on
