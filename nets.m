% Solve a Pattern Recognition Problem with a Neural Network
% Script generated by NPRTOOL
% Created Tue Jan 14 03:54:52 CET 2014
%
% This script assumes these variables are defined:
%
%   img - input data.
%   val - target data.

inputs = img;
targets = val;

% Create a Pattern Recognition Network
hiddenLayerSize = 9;
net = patternnet(hiddenLayerSize);


% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;


% Train the Network
[net,tr] = train(net,inputs,targets);

% Test the Network
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs)

% View the Network
view(net)

% Plots
% Uncomment these lines to enable various plots.
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, plotconfusion(targets,outputs)
%figure, ploterrhist(errors)
