X =-5:0.1:5;% x-axis to plot agaisnt random variable
L=10000; %length of the random vector
bins=25;

% standard normal gausian
mu=0;sigma=1;%mean=0,variance=1
mu1=1;sigma1=1.5;%mean=1,variance=1.5
%random methods
R = randn(1,L)*sigma + mu;
R1 = randn(1,L)*sigma1  + mu1;



% Graph 1
subplot(2,1,1)
[f,x]=hist(R,bins)
bar(x,f/trapz(x,f)); hold on;
%histogram(R,'Normalization','pdf'); %plot estimated pdf from the generated data
%f1_x = pdf('Normal',X,mu,sigma);%theoretical normal probability density
f12_x= (1/sqrt(2*pi*sigma*sigma))* exp((-X.^2)/(2*sigma*sigma));
hold on; plot(X,f12_x,'r--'); %plot computed theoretical PDF
axis([-6 6 0 .5])
hold off; grid on;
% labels of graph1
title('Theoretical PDF and Simulated Histogram 1');
legend('Histogram','Theoretical PDF');
xlabel('x');
ylabel('Gaussian R.V PDF');


% Graph 2
subplot(2,1,2)
[f,x]=hist(R1,bins)
bar(x,f/trapz(x,f)); hold on;
%histogram(R1,'Normalization','pdf');
f2_x= (1/sqrt(2*pi*sigma1*sigma1))* exp((-(X-mu1).^2)/(2*sigma1*sigma1));%plot estimated pdf from the generated data
%f2_x = pdf('Normal',X,mu1,sigma1); %theoretical normal probability density
hold on; plot(X,f2_x,'r--'); %plot computed theoretical PDF
axis([-6 6 0 .5])
hold off; grid on;
% labels of graph2
title('Theoretical PDF and Simulated Histogram 2');
legend('Histogram','Theoretical PDF');
xlabel('x');
ylabel('Gaussian R.V PDF');
