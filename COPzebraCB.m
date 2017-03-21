 %Data=loadxlsfiles('H:\student (home1.ts.odu.edu)\cbowe005\MATLAB\Barefoot Running Zebris data\Foot L & R\Formated\B*');
%  Header={'Time','L Step Number','L Force','Lx','Ly','R Step Number','R Force','Rx','Ry'};

load('Help_Jessie.mat')

for i= 1:length(Data);
    %Files{i}=[Header;num2cell(Data{2,i})];
    LeftStepNumber{i}=Data{2,i}(:,2);
    RightStepNumber{i}=Data{2,i}(:,6);
    NumberOfStepsLeft{i}=max(LeftStepNumber{i});
    NumberOfStepsRight{i}=max(RightStepNumber{i});


 for j=1:NumberOfStepsLeft{i};
    step{j}=find(Data{2,i}(:,2)==j);
    LeftStepMax{j}=max(step{j});
    LeftStepMin{j}=min(step{j});
    StepLeft{j}=Data{2,i}(LeftStepMin{j}:LeftStepMax{j},:);
 end
 
 
 StepLeftRaw{i}=StepLeft;
end


% 
% for k=1:NumberOfStepsRight{i};
%     step{k}=find(Data{2,1}(:,6)==k);
%     RightStepMax{k}=max(step{k});
%     RightStepMin{k}=min(step{k});
%     StepRight{k}=Data{2,1}(RightStepMin{k}:RightStepMax{k},:);
% end

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
