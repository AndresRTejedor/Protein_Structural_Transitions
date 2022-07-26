Instructions to calculate phase diagrams and the evolution of the beta-shit transitions.

Simulations that use the Mpipi model are as follows:
1-Compute the phase diagrams of A-LCD-hnRNPA1 in absence of RNA to estimate the equilibrium density at the relative temperature used for the HPS-Cation-\pi model. WITHOUT reactions.
2-Run NPT simulations to explore the evolution of the disordered-to-ordered transitions at the same relative temperature and different concentrations of RNA.

#### Phase diagram ####
Required files:

LAMMPS script: Mpipi_hnLCD.lmp (./1-Phase_diagrams)
Configuration file: conf.xyz (./1-Phase_diagrams)
#########################

#### NPT simulations ####
Required files:

LAMMPS script: Mpipi_hnLCD_NPT.lmp (./2-NPTs)
Configuration file: *hnRNPA1_NPT338.lmp (./2-NPTs/Data_files)
Reaction maps: map* polimer* (Reaction files directory)
##########################

In the 'Output_example' directory, a sample NPT simulation is provided for the system A-LCD-hnRNPA1  with RNA at 360K.
Please note that the trajectory included only represents the first chunk of the whole simulation
