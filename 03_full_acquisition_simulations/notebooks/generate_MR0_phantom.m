% generate cropped brain

clear

load  PD.mat
low_field_phantom(:,:,:,1)=permute(abs(image3D),[3,2,1]);  % PD in [a.u.]

low_field_phantom(:,:,:,5)=medfilt3(permute(abs(image3D)>0.00019,[3,2,1]));  % use simple mask for B1+ map;  rB1 in relative units

if 1  % use blurred mask for B1+ map to get realistic rB1 with 100% +- 20%
    low_field_phantom(:,:,:,5)=medfilt3(permute(abs(image3D),[3,2,1]));  
    rB1=low_field_phantom(:,:,:,5);
    low_field_phantom(:,:,:,5)=rB1/mean(rB1(rB1>mean(rB1(:))));
end

load  T1.mat
low_field_phantom(:,:,:,2)=permute(t1map,[3,2,1])*1e-3;  % T1 in s

load  T2_CPMG.mat
low_field_phantom(:,:,:,3)=permute(t2map,[3,2,1])*1e-3;  % T2 in s

load  bo.mat
low_field_phantom(:,:,:,4)=permute(boMap,[3,2,1]);  % in T, i.e. to convert to Hz as we need it 
low_field_phantom(:,:,:,4)=low_field_phantom(:,:,:,4)*42.5764*1e6; %requires multiplication with reduced gamma 42.5764 MHz /T

save('low_field_phantom.mat','low_field_phantom')


%% 
titles={'PD','T1','T2','B0','B1'}; % this is the order expected by obj_p = mr0.VoxelGridPhantom.load_mat('low_field_phantom.mat')
figure,
for ii=1:5
    subplot(3,2,ii),
    img=squeeze(low_field_phantom(:,:,4,ii)); 
    imagesc(img); title(titles{ii}); colorbar; axis image; axis off;
    
end