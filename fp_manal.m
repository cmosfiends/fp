%% Final Project MATLAB Analysis Script
% Trevor Love's HSPICE data import/analysis method

%% Extract Operating Data
filepath = 'Z:\ECE423\fp';
cd(filepath);
options = dir;

aclist = {'', 'cmf_tb'}; %maybe we should add a differential tb?
swlist = {'outswing_tb.sw0'}; %sweeps input for output swing

% Remember ^R and ^T toggles comments
% 
% %load sims and identify key channels with indexes 
% fileIdx = strmatch(aclist(1),{options.name}); 
% x_diff = loadsig([options(fileIdx).name]);
% 
% f = strmatch('HERTZ', {x_diff.name});
% mp = strmatch({'v_voutp'}, {x_diff.name});
% mn = strmatch({'v_voutn'}, {x_diff.name});
% pp = strmatch({'vp_voutp'}, {x_diff.name});
% pn = strmatch({'vp_voutn'}, {x_diff.name});
% 
% fileIdx = strmatch(aclist(2),{options.name}); 
% x_cmf = loadsig([options(fileIdx).name]);
% 
% f = strmatch('HERTZ', {x_cmf.name});
% m = strmatch({'v_b'}, {x_cmf.name});
% p= strmatch({'vp_b'}, {x_cmf.name});
% 
% %extract phase margin and unity gain bandwidth
% [~, pm_cmf, ~, ugf_cmf] = margin(abs(x_cmf(m(1)).data),...
%                                  x_cmf(p).data,...
%                                  x_cmf(f).data.*(2*pi))
% [~,pm_diff,~, ugf_diff] = margin(abs(x_diff(mp).data-x_diff(mn).data),...
%                                  x_diff(pn).data,...
%                                  x_diff(f).data.*(2*pi))
% %% Plot Frequency Response 
% figure
% set(gcf, 'Position', [347   162   928   504]); %wide view
% margin(abs(x_cmf(m(1)).data),x_cmf(p).data,x_cmf(f).data.*(2*pi));
% 
% figure
% set(gcf, 'Position', [347   162   928   504]); %wide view
% margin(abs(x_diff(mp).data-x_diff(mn).data),...
%      x_diff(pn).data,...
%      x_diff(f).data.*(2*pi));
 
%% Find Output Swing
% Programatically identify the output swing 
fileIdx = strmatch(swlist(1),{options.name}); %load .sw output
x1 = loadsig([options(fileIdx).name]);

on = strmatch({'v_voutn'}, {x1.name});
output = x1(on).data;
in = strmatch({'VOLTS'}, {x1.name});
input = x1(in).data;

%mark DC gain
reference = 45.4*ones(length(output)-1,1);
%dx for scaling
step = mode(diff(x1(in).data));
%extract gain from output
gaincurve = db(diff(output)./step);

figure
p1 = subplot(2,1,1);
hold on
grid minor
plot(x1(in).data(1:end-1,1), gaincurve,...
     x1(in).data(1:end-1,1), reference);

%find flat band intersections
[IR idx1] = min(abs(reference - gaincurve)); 
[OF idx2] = min(abs(reference(1:idx1-10) - gaincurve(1:idx1-10)));
plot([input(idx1);input(idx2)],...
     [gaincurve(idx1);gaincurve(idx2)], 'o'); 
ylabel('dB'); title('Output Swing');

p2 = subplot(2,1,2);
hold on
grid minor
plot(input, output);
plot([input(idx1),input(idx2)], [output(idx1);output(idx2)], 'o');
ylabel('V'); xlabel('VOLTS');
%output swing referenced by flatband intersection
text(-.5e-3, .5,['Output Swing = ',num2str(output(idx1)-output(idx2))]);
linkaxes([p1 p2], 'x');
