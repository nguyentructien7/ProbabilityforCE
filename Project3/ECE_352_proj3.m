clear all

%read the input file
protoLine = importdata('protoLineData.txt');
currentLine = importdata('currentLineData.txt');
 
X =4:0.1:15;% x-axis to plot agaisnt random variable

% standard normal gausian
protoLineMean = mean(protoLine);
protoLineStand = std(protoLine);
currentMean = mean(currentLine);
currentStand = std(currentLine);


subplot(2,1, 1);
%yProto = normpdf(X, protoLineMean,protoLineStand);%Normal probability density function
yProto= (1/sqrt(2*pi*protoLineStand*protoLineStand))* exp((-(X-protoLineMean).^2)/(2*protoLineStand*protoLineStand));%plot estimated pdf from the generated data
histogram(protoLine,25, 'Normalization','pdf');
hold on;
plot (X, yProto, 'r--');%plot computed theoretical protoLine
axis([5 13 0 .5])
hold off; grid on;
title('Prototype Production Lines')
legend('Histogram','Theoretical PDF');
xlabel('Resistance')
ylabel('PDF')

 

subplot(2,1, 2);
%yCurrent = normpdf(X,currentMean,currentStand);%Normal probability density function
yCurrent= (1/sqrt(2*pi*currentStand*currentStand))* exp((-(X-currentMean).^2)/(2*currentStand*currentStand));%plot estimated pdf from the generated data
histogram(currentLine,25, 'Normalization','pdf');
hold on;
plot (X, yCurrent,'r--');%plot computed theoretical currentLine
axis([5 13 0 1])
hold off; grid on;
title('Current Production Lines')
legend('Histogram','Theoretical PDF');
xlabel('Resistance')
ylabel('PDF')

 
%Estimating the probability of a catheter testing below 8N
pDataSize= numel( protoLine(:,1));%Number of array elements
PN = 0;% N is less than 8
for i = 1 : pDataSize
    if protoLine(i) < 8.0;
        PN = PN + 1;
        
    end
end
 
pDataSize= numel( currentLine(:,1));%Number of array elements
CN = 0;% N is less than 8
for i = 1 : pDataSize
    if currentLine(i) < 8.0;
        CN = CN + 1;
    end
end


%Probability estimate using the input data 
ZProto= (8-protoLineMean)/protoLineStand;
ZCurrent= (8-currentMean)/currentStand;


%finding the CDF
cdfP=normcdf(8,protoLineMean,protoLineStand);
cdfC=normcdf(8,currentMean, currentStand);

%CDF in percentage
percentP=cdfP*100;
PercentC=cdfC*100;

%print to the command window
fprintf('ZProto is %d\n', ZProto); 
fprintf('ZCurrents is %d\n', ZCurrent); 
fprintf('cdfP is %d\n', cdfP); 
fprintf('cdfCs is %d\n', cdfC); 
fprintf('percentP is %d\n', percentP); 
fprintf('percentC is %d\n', PercentC); 




