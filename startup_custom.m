reply = input('Initialize MESA CameraGroupTester Analysis? Y/N [N] \n', 's');

if strcmp(reply, 'Y')
    cd MESA/CameraGroupTester_Data/
    addpath CameraGroup_AnalysisCode/
    disp('Need to add-path of data-set to analyze')
    edit AnalyzeMesaProbes.m
end