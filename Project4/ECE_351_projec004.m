
 %Question 1
%Gaussian (Noise)  
mean =0;
variance = 1;
numberPoints = 5000;
T = -2:.05:6
N = randn(1, numberPoints); 


%distortion d= 0, voltage v = 1
X_A1=( (N) + 0 *(N.^2)); %Target Absent
P_fa1=sum(X_A1>T(1))/numberPoints;
for i=2 : numel(T)
    P_fa1=[P_fa1,sum(X_A1>T(i))/numberPoints];

end

X_P1=( (1+N) + 0 *((1+N).^2)); %target Presence
P_miss1=sum(X_P1 < T(1))/numberPoints;
for i=2 : numel(T)
    P_miss1=[P_miss1,sum(X_P1<T(i))/numberPoints];
end

%X_P1= normcdf(T,1,variance)+0*(normcdf(T,1,variance).^2); %Pfa
figure (1)
subplot(3,2,1)
plot(T,P_fa1,'b');
hold on;
plot(T,P_miss1, 'r');
xlabel ('Thresh Hold v=1, d=0')
ylabel ('Probability');
legend ('fa','miss')

%distortion d= 0, voltage v = 2
%X_A2=(1- N) + 0 *(1-N).^2;
%X_P2= normcdf(T,2,variance)+0*(normcdf(T,2,variance).^2);



%distortion d= 0, voltage v = 2
X_A2=( (N) + 0 *(N.^2)); %Target Absent
P_fa2=sum(X_A1>T(1))/numberPoints;
for i=2 : numel(T)
    P_fa2=[P_fa2,sum(X_A1>T(i))/numberPoints];

end

X_P2=( (2+N) + 0 *((2+N).^2)); %target Presence
P_miss2=sum(X_P2 < T(1))/numberPoints;
for i=2 : numel(T)
    P_miss2=[P_miss2,sum(X_P2<T(i))/numberPoints];
end

subplot(3,2,2)
plot(T,P_fa2,'b');
hold on;
plot(T,P_miss2, 'r');
xlabel ('Thresh Hold v=2, d=0')
ylabel ('Probability');
legend ('fa','miss')

%distortion d= 0.2, voltage v = 1
%X_A3=(1- N) + .2 *(1-N).^2;
%X_P3= normcdf(T,1,variance)+.2*(normcdf(T,1,variance).^2);


%distortion d= 0.2, voltage v = 1
X_A3=( (N) + 0.2 *(N.^2)); %Target Absent
P_fa3=sum(X_A3>T(1))/numberPoints;
for i=2 : numel(T)
    P_fa3=[P_fa3,sum(X_A3>T(i))/numberPoints];

end

X_P3=( (1+N) + 0.2*((1+N).^2)); %target Presence
P_miss3=sum(X_P3 < T(1))/numberPoints;
for i=2 : numel(T)
    P_miss3=[P_miss3,sum(X_P3<T(i))/numberPoints];
end
subplot(3,2,3)
plot(T,P_fa3,'b');
hold on;
plot(T,P_miss3, 'r');
xlabel ('Thresh Hold v=1, d=0.2')
ylabel ('Probability');
legend ('fa','miss')

%distortion d= 0.2, voltage v = 2
%X_A4=(1- N) + .2 *(1-N).^2;
%X_P4= normcdf(T,2,variance)+.2*(normcdf(T,2,variance).^2);

X_A4=( (N) + 0.2 *(N.^2)); %Target Absent
P_fa4=sum(X_A4>T(1))/numberPoints;
for i=2 : numel(T)
    P_fa4=[P_fa4,sum(X_A4>T(i))/numberPoints];

end

X_P4=( (2+N) + 0.2 *((2+N).^2)); %target Presence
P_miss4=sum(X_P4 < T(1))/numberPoints;
for i=2 : numel(T)
    P_miss4=[P_miss4,sum(X_P4<T(i))/numberPoints];
end
subplot(3,2,4)
plot(T,P_fa4,'b');
hold on;
plot(T,P_miss4, 'r');
xlabel ('Thresh Hold v=2, d=0.2')
ylabel ('Probability');
legend ('fa','miss')


%distortion d= 0.4, voltage v = 1
%X_A5=(1- N) + 0.4 *(1-N).^2;
%X_P5= normcdf(T,1,variance)+.4*(normcdf(T,1,variance).^2);
%distortion d= 0.4, voltage v = 1

X_A5=( (N) + 0.4 *(N.^2)); %Target Absent
P_fa5=sum(X_A5>T(1))/numberPoints;
for i=2 : numel(T)
    P_fa5=[P_fa5,sum(X_A5>T(i))/numberPoints];

end

X_P5=( (1+N) + 0.4 *((1+N).^2)); %target Presence
P_miss5=sum(X_P5 < T(1))/numberPoints;
for i=2 : numel(T)
    P_miss5=[P_miss5,sum(X_P5<T(i))/numberPoints];
end
subplot(3,2,5)
plot(T,P_fa5,'b');
hold on;
plot(T,P_miss5, 'r');
xlabel ('Thresh Hold v=1, d=0.4')
ylabel ('Probability');
legend ('fa','miss')


%distortion d= 0.4, voltage v = 2

X_A6=( (N) + 0.4 *(N.^2)); %Target Absent
P_fa6=sum(X_A6>T(1))/numberPoints;
for i=2 : numel(T)
    P_fa6=[P_fa6,sum(X_A6>T(i))/numberPoints];

end

X_P6=( (2+N) + 0.4 *((2+N).^2)); %target Presence
P_miss6=sum(X_P6 < T(1))/numberPoints;
for i=2 : numel(T)
    P_miss6=[P_miss6,sum(X_P6<T(i))/numberPoints];
end
subplot(3,2,6)
plot(T,P_fa6,'b');
hold on;
plot(T,P_miss6, 'r');
xlabel ('Thresh Hold')
ylabel ('Probability');
legend ('fa','miss')

%Question2

%Distortion = 0 ROC voltage = 1 & 2
figure (2)
subplot(2,3,1);
plot(P_fa1,P_miss1)
hold on;
plot(P_fa2,P_miss2)
hold on;
xlabel('Pfa');
ylabel('Pmiss');
title('Pfa vs Pmiss');

%Distortion = 0.2 ROC voltage = 1 & 2
figure (2)
subplot(2,3,2);
plot(P_fa3,P_miss3)
hold on;
plot(P_fa4,P_miss4)
hold on;
xlabel('Pfa');
ylabel('Pmiss');
title('Pfa vs Pmiss');

%Distortion = 0.4 ROC voltage = 1 & 2
figure (2)
subplot(2,3,3);
plot(P_fa5,P_miss5)
hold on;
plot(P_fa6,P_miss6)
xlabel('Pfa');
ylabel('Pmiss');
title('Pfa vs Pmiss');
hold on;



%Question 3
%distortion = 0
Perr_1= .8*P_fa1 + 0.2*P_miss1;
r1 = min(Perr_1);
w1 = 0;
for i = 1 : numel (Perr_1)
    if(Perr_1(i) == r1)
        w1= i;
    end
end
minTperr1 = T(w1);

Perr_2= .8*P_fa2 + 0.2*P_miss2;
r2 = min(Perr_2);
w2 = 0;
for i = 1 : numel (Perr_2)
    if(Perr_2(i) == r2)
        w2= i;
    end
end
minTperr2 = T(w2);

figure (2)
subplot(2,3,4);
plot(T,Perr_1)
hold on;
plot(T,Perr_2)
hold on;
xlabel('Threshold');
ylabel('Perr');
title('Perr vs Threshold');
axis ([-2 6 0 1.0]);

%distortion =.2
Perr_3= .8*P_fa3 + 0.2*P_miss3;
r3 = min(Perr_3);
w3 = 0;
for i = 1 : numel (Perr_1)
    if(Perr_3(i) == r3)
        w3= i;
    end
end
minTperr3 = T(w3);

Perr_4= .8*P_fa4 + 0.2*P_miss4;
r4 = min(Perr_4);
w4 = 0;
for i = 1 : numel (Perr_4)
    if(Perr_4(i) == r4)
        w4= i;
    end
end
minTperr4 = T(w4);

figure (2)
subplot(2,3,5);
plot(T,Perr_3)
hold on;
plot(T,Perr_4)
hold on;
xlabel('Threshold');
ylabel('Perr');
title('Perr vs Threshold');
axis ([-2 6 0 1.0]);

%distortion =.4
Perr_5= .8*P_fa5 + 0.2*P_miss5;
r5 = min(Perr_5);
w5 = 0;
for i = 1 : numel (Perr_5)
    if(Perr_5(i) == r5)
        w5= i;
    end
end
minTperr5 = T(w5);


Perr_6= .8*P_fa6 + 0.2*P_miss6;
r6 = min(Perr_6);
w6 = 0;
for i = 1 : numel (Perr_6)
    if(Perr_6(i) == r6)
        w6= i;
    end
end
minTperr6 = T(w6);


figure (2)
subplot(2,3,6);
plot(T,Perr_5)
hold on;
plot(T,Perr_6)
hold on;
xlabel('Threshold');
ylabel('Perr');
title('Perr vs Threshold');
axis ([-2 6 0 1.0]);

%Question 4

%d=0
E_1= .8*P_fa1*1 + 0.2*P_miss1*5;
t1 = min(E_1);
s1 = 0;
for i = 1 : numel (E_1)
    if(E_1(i) == t1)
        s1= i;
    end
end
minTE_C1 = T(s1);

E_2= .8*P_fa2*1 + 0.2*P_miss2*5;
t2 = min(E_2);
s2 = 0;
for i = 1 : numel (E_2)
    if(E_2(i) == t2)
        s2= i;
    end
end
minTE_C2 = T(s2);





figure (3)
subplot(2,3,1);
plot(T,E_1)
hold on;
plot(T,E_2)
hold on;
axis([-2 6 0 1.0]);
xlabel('Threshold');
ylabel('E_C');
title('E_C vs Threshold');

%d=.2
E_3= .8*P_fa3*1 + 0.2*P_miss3*5;
t3 = min(E_3);
s3 = 0;
for i = 1 : numel (E_3)
    if(E_3(i) == t3)
        s3= i;
    end
end
minTE_C3 = T(s3);

E_4= .8*P_fa4*1 + 0.2*P_miss4*5;
t4 = min(E_4);
s4 = 0;
for i = 1 : numel (E_4)
    if(E_4(i) == t4)
        s4= i;
    end
end
minTE_C4 = T(s4);


subplot(2,3,2);
plot(T,E_3)
hold on;
plot(T,E_4)
hold on;
axis([-2 6 0 1.0]);
xlabel('Threshold');
ylabel('E_C');
title('E_C vs Threshold');


%d=.4
E_5= .8*P_fa5*1 + 0.2*P_miss5*5;
t5 = min(E_5);
s5 = 0;
for i = 1 : numel (E_5)
    if(E_5(i) == t5)
        s5= i;
    end
end
minTE_C5 = T(s5);

E_6= .8*P_fa6*1 + 0.2*P_miss6*5;
t6 = min(E_6);
s6 = 0;
for i = 1 : numel (E_6)
    if(E_6(i) == t6)
        s6= i;
    end
end
minTE_C6 = T(s6);


subplot(2,3,3);
plot(T,E_5)
hold on;
plot(T,E_6)
hold on;
axis([-2 6 0 1.0]);
xlabel('Threshold');
ylabel('E_C');
title('E_C vs Threshold');


 
