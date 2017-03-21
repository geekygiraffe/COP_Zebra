 Data=loadxlsfiles('H:\student (home1.ts.odu.edu)\cbowe005\MATLAB\Barefoot Running Zebris data\Foot L & R\Formated\B*');
%  Header={'Time','L Step Number','L Force','Lx','Ly','R Step Number','R Force','Rx','Ry'};


for i= 1:length(Data);
    %Files{i}=[Header;num2cell(Data{2,i})];
    LeftStepNumber{i}=Data{2,i}(:,2);
    RightStepNumber{i}=Data{2,i}(:,6);
    NumberOfStepsLeft{i}=max(LeftStepNumber{i});
    NumberOfStepsRight{i}=max(RightStepNumber{i});
    FindLeftSteps{NumberOfStepsLeft{i}}=find(Data{2,i}(:,2)==j);
end
    
    c=1;
for j=1:NumberOfStepsLeft{i};
    step{j}=find(Data{2,1}(:,2)==j);
    LeftStepMax{j}=max(step{j});
    LeftStepMin{j}=min(step{j});
    StepLeft{j}=Data{2,1}(LeftStepMin{j}:LeftStepMax{j},:);
end

for k=1:NumberOfStepsRight{i};
     step{j}=find(Data{2,1}(:,6)==k);
    RightStepMax{j}=max(step{j});
    RightStepMin{j}=min(step{j});
    StepRight{j}=Data{2,1}(RightStepMin{j}:RightStepMax{j},:);
    

%     
% 
% 
% end
% 
% for i = 1:57 ;
%     stepNum(1,i) = max(LeftStepNumber{1,i}(:,1));
%     locateme{2,i} = Data{2,i}(:,2) == stepNum(1,i); % determine for each trial when condition is true
%     where{i,1} = find([locateme{2,i}(:,1)],1,'first'); %find the row
%     idrow{i,1} = where{i,1};
% end