Instructions to run the PMF simulations

Installation of GROMACS:

1-Download the corresponding version of GROMACS (https://manual.gromacs.org/documentation/)
2-Install GROMACS on your computer.
3-Run the PMF simulations following the instructions below.

The directories are sorted from the first step (Prepare the configuration) to the last one (Umbrella sampling simulation), this is:

1-Prepare the configuration from the structured pdb of the peptides (1-Conf)
2-Build the topology for each configuration (2-Topol)
3-Include the solvent (3-Solvent)
4-Perform a minimization of energy to avoid overlapping with the solvent (4-Minimization)
5-NPT simulation to equilibrate the system (5-NPT)
6-Umbrella sampling simulation to compute the energy of each configuration with both structured and disordered peptides (6-Umbrella_Samp)

In each directory there is a bash script 'script.sh' that automatically executes all the steps.
In some directories there is another script 'crear_config.sh' that must be executed before the other one.
The potential for the solvent (a99SBdisp.ff) has been included in the directories that use it.

The files provided here for the umbrella sampling include only the material to run the disordered peptides. 
The 'analysis' subdirectory in '6-Umbrella_Samp' includes the results obtained and presented in Fig 1.

As an example we have included in all directories the output resulting of running the 20th configuration.
