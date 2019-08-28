numTrials=100000;
trials=1:numTrials;
heads=0;
t=rand(numTrials,1);

percentOfH=zeros(size(t));

for i= trials
    if (t(i)< .05)
        heads=heads+1;
    end
    percentOfH(i)= heads/i;
end
plot(trials, percentOfH)
xlabel('Number of Trials')
ylabel('Number of Times Heads Was Tossed')
title ('Trial Number vs Tossed Heads')