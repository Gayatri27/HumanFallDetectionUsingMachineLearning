function training = dat_to_mat()
clear;
clc;

BaseName='11Nov_'; 
endname = '.dat';
final_matrix = [];
training = [];

total_count = 320;
for k = 1:total_count
    FileName = [BaseName,num2str(k),endname];
    fprintf(FileName)
    csi_trace = read_bf_file(FileName);
    
    instance = [];
    
    for i = 1:990
    csi_entry = csi_trace{i};
   % extracting 3D matrix from the structure
   csi = get_scaled_csi(csi_entry);

   % converting 3D matrix to 2D
%     single_packet = db(abs(squeeze(csi)));
    single_packet = csi;
     temp = single_packet(1,1,:);
 
%    % adding entries into the final matrix
       instance = [instance ; temp];
   % increasing couter for next entry
%  
    end
    
    original_noised = instance(:)';
    training = [training; original_noised];
end
