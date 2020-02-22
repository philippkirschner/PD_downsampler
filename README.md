# Phylogenetic diversity complementarity calculation for taxa subsampled from raster grid cells

The R script "donwsample_PD_compl.R" allows to subsample taxa from pre-defined raster grid cells, calculate phylogenetic diversity complementarity values for these grid cells, and summarize the results as median or mean values in a GIS raster layer in .asc format. 

The R script only works on linux as it relies on two shell scripts that are also provided.

The script needs the following input (name of provided example files in brackets): 
* A csv file with the name of the locality in the first column and the tip labels in the following columns (input.csv)
* A phylogenetic tree in nexus format using the same tip labels as specified in the csv file (input.tree.csv)
* A csv file with the coordinates for the position of each grid cell (coordinates_localities.csv)


The shell script exec_pda.sh calls the software pda, that is used for calculation of phlyogenetic diversity complementarity. The path to the software needs to be specified in the script.

The software is available here: http://www.cibiv.at/software/pda/#download

The citation for pda: 
Chernomor, O. et al. Split diversity in constrained conservation prioritization using integer linear programming. Methods Ecol. Evol. 6, 83–91 (2015). http://dx.doi.org/10.1111/2041-210X.12299


The shell script "extract_PD_compl_results.sh" extracts the values from the result files and the line numbers from these .out files need to be specified.

Note: This code has been scripted for a specific task and will not run without prior edits of the user - passages where such edits are necessary are commented.


For information concerning the concept of phylogenetic diversity and related measures see:

Faith, D. P. Conservation evaluation and phylogenetic diversity. Biol. Conserv. 61, 1–10 (1992). https://doi.org/10.1016/0006-3207(92)91201-3




