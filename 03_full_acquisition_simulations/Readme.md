ET2: Hands-on primer on full acquisition simulations
 
Educational Tracks 2

15:30 – 17:00 1h 30′

ROOM 4

Moderators: Joseba Alonso – Julia Pfitzer

15:30 – 16:00, Simulating and optimizing MR sequences, Shaihan Malik, KCL

16:00 – 16:30, I was new to MRI and this simulator saved my life, Magda Duarte, FAU

16:30 – 17:00, Hands-on — Digital Twin of low-field scanner, Moritz Zaiss, FAU



### MaRCoS system optimized 3D MTSE + MR-zero simulation (PDG)
* B0 = 72 mT
* gamma_ = 42.5764*1e6
* v0 = gamma_*B0 = 3.05 MHz
* 1 ppm = 3.05 Hz
* B0 inhomogeneity:
  * approx. 100 ppm = 305 Hz
 
#Simulation:
The MR simulation requires four ingredients:

1.   a defined MR sequence
2.   a defined MR phantom with all tissue and system properties
3.   a call of the simulator with sequence and phantom
4.   a reconstruction of k-space signals to images

## 1.Sequence definition- Simulation with Pulseq interpreter
* import pypulseq as pp
* define pulseq sequence or load mtse
* nothing esle to do?
* 3D can be slow -> gpu needed, or single slice

## 2.Phantom and system definition
*   quantitative maps: PD,T1,T2, (T2',D)
*   system-dependent maps: B0, B1+, (B1-)
*   store in matlab or python, load:
  *   import MRzeroCore as mr0
  *   obj_p = mr0.VoxelGridPhantom.load_mat('low_field_phantom.mat')

## 3.Run simulation
* load seq file as seq0 object
  * seq0 = mr0.Sequence.import_file('external.seq')
* compute the phase distribution graph
  * graph=mr0.compute_graph(seq0, obj_p, 200, 1e-3)
* **Simulate** or execute the graph for seq and obj
  * signal = mr0.execute_graph(graph, seq0, obj_p)
* Faster simulation with lower accuracy:
  * signal = mr0.execute_graph(graph, seq0, obj_p,min_emitted_signal=0.05,min_latent_signal=0.05)
* Faster simulation on GPU:
  * signal = mr0.execute_graph(graph, seq0.cuda(), obj_p.cuda())

## 4. Display & Reconstruction  
* plot signal in the Pulseq ADC subplot
  * seq.plot(plot_now=False)
  * mr0.util.insert_signal_plot(seq=seq, signal =signal.numpy())
* reshape signal to k-sapce
* fft3
* 




