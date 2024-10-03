# ET2: From Hardware to Map. Hands-on Primer to Imaging with a Portable Scanner

In recent years, portable low-field MRI scanners have emerged as a potential solution to the limitations of conventional high-field MRI, offering greater flexibility and accessibility. However, working with these portable systems comes with its own set of unique challenges, from hardware constraints to image quality and environmental interferences.

This course will provide an introduction to the complexities involved in imaging with a portable low-field MRI scanner. The session will begin with two talks:

- The first talk, by Dr. Beatrice Lena, will outline the challenges of low-field MRI, highlighting issues such as signal-to-noise ratio, image resolution, and external interference.
- The second talk, by Dr. Joseba Alonso, will focus on the research and development work carried out in our lab using portable MRI technology, showcasing the advancements we’ve made.

Following the talks, Teresa Guallart will proceed with a live demonstration of our portable MRI scanner. The demonstration will focus on the entire workflow, including critical steps such as system calibration, common imaging protocols, and troubleshooting under undesired conditions like improper tuning, mismatched coils, or electromagnetic interferences (EMIs). We will also explore how these issues impact the imaging process.

The portable scanner is controlled using [MaRCoS](https://analyticalsciencejournals.onlinelibrary.wiley.com/doi/full/10.1002/nbm.4825), an open-source console specifically designed for low-field MRI setups. Additionally, the graphical environment [MaRGE](https://www.sciencedirect.com/science/article/pii/S1090780724000466?via%3Dihub), developed to work with MaRCoS, is now fully compatible with PyPulseq, allowing for more intuitive sequence design and control of the imaging process. This integrated system simplifies the workflow, especially when handling complex sequences like the Multi Spin Echo used in the demonstration.

Finally, the demonstration will conclude with an example MRI sequence coded using PyPulseq, a Multi Spin Echo to acquire a T2 map of the sample. Due to time constraints, the images shown will be projections, but full 3D raw data images are available in this [link](https://upvedues-my.sharepoint.com/:u:/g/personal/joalgui2_upv_edu_es/EQsBL9nxeypKulMrUOwmrbcBzFE96ZIHGkKYwEb7L7UcNg?e=9HtJ5k). `.seq` can be found in the `data` folder of this respository.

The data provided includes raw MRI data in `.mat` format and inputs parameters in `.csv` format. These files contain not only the acquired images but also detailed information about the input parameters used during the sequences, such as echo times, repetition times, and the number of echoes. More information about the parameters in the `.mat` file can be found in the MSE_pypulseq heading [here](https://github.com/josalggui/MaRGE/wiki/Raw-Data-structure). Participants are encouraged to explore this data to better understand the relationship between the input parameters and the resulting images, particularly in the context of T2 mapping.
