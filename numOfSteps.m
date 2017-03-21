function [numSteps,lastRow] = numOfSteps (data);


for i = 1:length(data)
    numSteps{i,2} = max (data{i,2}(:,2)); % find max number of steps located in column 2 
    locate{i,1} = data{i,2}(:,2) == numSteps{i,2};    % determine for each trial how many steps were taken, will max number in second column of data{:,2}(:,2)  
    locateStepNum{i,1} = find([locate{i,1}(:,1)],1,'last'); 
    lastRow{i,1} = locateStepNum{i,1}; %finds the last steps and corresponding row in the data
end
end
