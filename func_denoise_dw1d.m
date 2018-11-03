
function sigDEN = func_denoise_dw1d(gaya);
% FUNC_DENOISE_DW1D Saved Denoising Process.
%   SIG: vector of data
%   -------------------
%   sigDEN: vector of denoised data

%  Auto-generated by Wavelet Toolbox on 08-Oct-2018 14:35:50

% Analysis parameters.
%---------------------
wname = 'haar';
level = 5;

% Denoising parameters.
%----------------------
% meth = 'sqtwolog';
% scal_or_alfa = sln;
sorh = 's';    % Specified soft or hard thresholding
thrSettings = 1.578273523880416;

% Denoise using CMDDENOISE.
%--------------------------
sigDEN = cmddenoise(gaya,wname,level,sorh,NaN,thrSettings);
