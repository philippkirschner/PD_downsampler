# PD_downsampler
Scripts to downsample PD complementarity and create a raster layer


 R script that allows to downsample taxa from pre-defined raster grid cells, calculate phylogenetic diversity complementarity values for this grid cells, and create a GIS raster ayer in .asc format. 
The R script only works on linux as it relies on two shell scripts that are also provided.

The script needs the following input (name of provided example files in brackets): 
* A csv file with the name of the locality in the first column and the tip labels in the following columns (input.csv)
* A phylogenetic tree in nexus format using the same tip labels as specified in the csv file (input.tree.csv)
* A csv file with the coordinates for the position of each grid cell (coordinates_localities.csv)


The shell script exec_pda.sh calls the software pda, that is used for calculation of phlyogenetic diversity complementarity. The path to the software needs to be specified in the script.

The citation for pda: Chernomor, O. et al. Split diversity in constrained conservation prioritization using integer linear programming. Methods Ecol. Evol. 6, 83–91 (2015).
The software is available here: http://www.cibiv.at/software/pda/#download

The shell script "extract_PD_compl_results.sh" extracts the values from the result files and the line numbers from the .out files need to be specified.

For information concerning the concept of phylogenetic diversity and related measures see: 
Faith 1992. Conservation evaluation and phylogenetic diversity, Biological Conservation, Volume 61, Issue 1, Pages 1-10, ISSN 0006-3207, https://doi.org/10.1016/0006-3207(92)91201-3


Note: This code has been scripted for a specific task and will not run without edits by the user - passages where such edits are necessary are commented.

