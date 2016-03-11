%% Final Project MATLAB Analysis Script
% Trevor Love's HSPICE data import/analysis method

%% Extract Operating Data
filepath = 'Z:\ECE423\fp';
cd(filepath);
options = dir;

aclist = {'ehh.ac0', 'opamp_cmf.ac0'}; %maybe we should add a differential tb?
swlist = {'ehh.sw0'}; %sweeps input for output swing

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
% % fileIdx = strmatch(aclist(2),{options.name}); 
% % x_cmf = loadsig([options(fileIdx).name]);
% % 
% % f = strmatch('HERTZ', {x_cmf.name});
% % m = strmatch({'v_b'}, {x_cmf.name});
% % p= strmatch({'vp_b'}, {x_cmf.name});
% % 
% % %extract phase margin and unity gain bandwidth
% % [~, pm_cmf, ~, ugf_cmf] = margin(abs(x_cmf(m(1)).data),...
% %                                  x_cmf(p).data,...
% %                                  x_cmf(f).data.*(2*pi));
% [~,pm_diff,~, ugf_diff] = margin(abs(x_diff(mp).data-x_diff(mn).data),...
%                                  x_diff(pn).data,...
%                                  x_diff(f).data.*(2*pi));
% %                              
% % 
% % %% Plot Frequency Response 
% % figure
% % set(gcf, 'Position', [347   162   928   504]); %wide view
% % margin(abs(x_cmf(m(1)).data),x_cmf(p).data,x_cmf(f).data.*(2*pi));
% 
% figure
% set(gcf, 'Position', [347   162   928   504]); %wide view
% margin(abs(x_diff(mp).data-x_diff(mn).data),...
%            x_diff(pn).data,...
%            x_diff(f).data.*(2*pi));
%  
%% Find Output Swing
% Programatically identify the output swing 
fileIdx = strmatch(swlist(1),{options.name}); %load .sw output
x1 = loadsig([options(fileIdx).name]);

on = strmatch({'v_voutn'}, {x1.name});
op = strmatch({'v_voutp'}, {x1.name});
outn = x1(on).data;
outp = x1(op).data;
in = strmatch({'VOLTS'}, {x1.name});
input = x1(in).data;

len = length(outn);
%mark DC gain
%dx for scaling
dx = mode(diff(x1(in).data));
%extract gain from output
op_curve = db(diff(outp)./dx);
on_curve = db(diff(outn)./dx);
max_gain = max([op_curve;on_curve]);
%reference 6dB/50% compression
reference = (max_gain-6)*ones(len-1,1);
figure
p1 = subplot(2,1,1);
hold on
grid minor
plot(input(1:end-1,1), op_curve,...
     input(1:end-1,1), on_curve,...
     input(1:end-1,1), reference);

%find flat band intersections, 
% [IR idx1] = min(abs(reference(150:len-1) - op_curve(150:len-1))); 
% [OF idx2] = min(abs(reference(1:len-150) - on_curve(1:len-150)));
% idx1 = idx1+150

p_idx = find(diff(sign(reference-op_curve)),2);
n_idx = find(diff(sign(reference-on_curve)),2); 

plot(input(p_idx),op_curve(p_idx), 'ok',...
     input(n_idx),on_curve(n_idx), 'og');
legend('+','-');
ylabel('dB'); title('Output Swing');

p2 = subplot(2,1,2);
hold on
grid minor
plot(input, outn,input, outp);
plot(input(p_idx),outp(p_idx), 'ok',...
     input(n_idx),outn(n_idx), 'og');
ylabel('V'); xlabel('VOLTS');
%output swing referenced by -6dB intersection
pswing = outp(p_idx(end))-outp(p_idx(1));
nswing = outn(n_idx(1))-outn(n_idx(end));
outswing = pswing + nswing;
legend('+','-');
text(.15e-3, 1,['Output Swing = ',num2str(outswing)]);
linkaxes([p1 p2], 'x');
