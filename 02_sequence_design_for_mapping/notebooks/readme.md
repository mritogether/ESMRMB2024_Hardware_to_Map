# Sequences for the *Pulseq sequence hands-on* lecture
* Note: the notebook filename with suffix "_ex" is for hands-on exercise, and with  suffix "_sol" is the corresponding solution.   
The purpose of the *Pulseq sequence hands-on* lecture is to build a time-optimized spin-echo (SE) sequence.         

The intermediate steps for the hands-on exercise:
## Basic MR spectroscopy
* `s00_fid`: the simplest free induction decay (FID) sequence.
* `s01_from_fid_to_1d_se.ipynb`: extend the FID sequence to SE sequence with 1D spatial encoding.
## 3D SE sequence
* `s10_from_1d_se_to_3d_se`: extend the 1D SE to 3D SE.
* `s11_optimized_3d_se`: optimize the 3D SE by doing "gradient surgery" with function `pp.make_extended_trapezoid`.
* `s12_optimized_3d_se_portableScanner`: adapt the optimized 3D SE for the data acquisition on the portable scanner.
# Sequences for the *Pulseq for mapping* lecture
## T2 mapping
* `s20_optimized_3d_mse_portableScanner`: extend the optimized 3D SE adapted for the portable scanner from single-echo to multi-echo for T2 mapping.
## T1 mapping
* `s30_2D_IR_SE_T1mapping`: 2D inversion recovery (IR) SE sequence for T1 mapping. 
