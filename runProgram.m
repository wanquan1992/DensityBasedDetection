initPath;
denTrainFolder=fullfile('density','train');
if ispc
    maxSubArrayFile=fullfile(denTrainFolder,'maxsubarray2D.mexw64');
elseif isunix
    maxSubArrayFile=fullfile(denTrainFolder,'maxsubarray2D.mexa64');
end
if ~exist(maxSubArrayFile,'file')
    cd(denTrainFolder);
    mex maxsubarray2D.cpp;
    cd(fullfile('..','..'));
end
testDataset;
demoGUI;