# Animations from EPG simulation lecture

The PDF file for the slides does not contain any animations, so I have collected a few here. 

### CPMG (multi spin echo) sequences
The magnetization dynamics for a perfect sequence with 90 degree excitation and 180 degree refocusing pulses is given below:

<img src="images/CPMG_standard.gif" width="50%">

The signal in this and all other plots is obtained by integrating the transverse magnetization components over all isochromats.

#### 120 degree refocusing
If the refocusing pulses are reduced to 120 degrees we get the following:

<img src="images/CPMG_120.gif" width="50%">

You can see the equivalent EPG diagram in the slides.

#### 120 degree non-CPMG sequence
Multi-echo spin echo sequences must generally maintain a 90 degree phase difference between excitation and refocusing pulses. 

<img src="images/nonCPMG_120.gif" width="50%">

Removing this, you can see that the magnetization from different isochromats quickly becomes very dispersed, leading to low echo amplitudes.

#### Hyperecho
Hennig and Scheffler proposed a sequence with lower refocusing angles, followed by a 180 degree pulse, then more low angles with opposite phase. Below is an extreme example (you can find more appropriate ones [here](https://onlinelibrary.wiley.com/doi/full/10.1002/mrm.1153)). 

<img src="images/CPMG_hyperecho.gif" width="50%">

In the animation above you see that the magnetization vectors suddenly come together coherently towards the end of the sequence, giving a large _hyper_echo. The phase diagram (slides) is informative as to why this happens. 

### 3-echo examples
In the lecture we looked at examples with three 90 degree pulses spaced non-uniformly in time.

<img src="images/stimulated_echoes_uniform.gif" width="100%">

Above is the example using a uniform distribution of frequencies through the simulated 'voxel'. This is what might be expected based on a linear gradient applied to a uniform voxel. There are three echoes: a spin echo (or Hahn echo) formed after the first two pulses, then a stimulated echo and refocused spin echo after the third pulse (again more detail in the slides). Finally, the shapes of the echoes above are a bit strange; this is because it doesn't include any de-phasing due to small-scale field inhomogeneities which cause T2* to differ from T2. 

<img src="images/stimulated_echoes_random.gif" width="100%">

Above is an example with the isochromat off-resonance frequencies modified using a random shift which approximates these inhomogenmeities. Notice that the echo shapes are now more realistic looking (I used a Gaussian distribution here instead of the correct Cauchy-Lorentz distribution, which would have given exponential decay in the time domain). 

Please feel free to use these in any future work (but credit me if you're feeling generous).

Shaihan Malik, King's College London, 2024.