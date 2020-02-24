# Phylogenetic diversity complementarity calculation for individuals subsampled from raster grid cells

The R script "donwsample_PD_compl.R" was designed to subsample taxa from pre-defined raster grid cells, calculate phylogenetic diversity complementarity values for these grid cells based on an underlying phylogenetic tree, and summarize the results as median or mean values in a GIS raster layer in .asc format. Please note that the script needs to be edited manually and will not run as it is - passages where edits are necessary are commented.

The R script only works on linux as it relies on two shell scripts that are also provided.

The following input data is needed (name of provided example files in brackets): 
* A .csv file with the name of the locality in the first column and the associated tip labels in the following columns (input.csv)
* A phylogenetic tree in nexus format using the same tip labels as specified in the csv file (input.tree.nex)
* A .csv file containing the coordinates of each grid cell in decimal format (Longitude, Latitude)  (coordinates_localities.csv)


The shell script exec_pda.sh calls the software pda from within R, that is used for calculation of phlyogenetic diversity complementarity. The path to pda needs to be specified in the shell script.

The software is available here: http://www.cibiv.at/software/pda/#download

The citation for pda: 
Chernomor, O. et al. Split diversity in constrained conservation prioritization using integer linear programming. Methods Ecol. Evol. 6, 83–91 (2015). http://dx.doi.org/10.1111/2041-210X.12299


The shell script "extract_PD_compl_results.sh" extracts the values from the .out result files. The line numbers of the results in the .out files need to be specified in the script.


For information concerning the concept of phylogenetic diversity and related measures see:

Faith, D. P. Conservation evaluation and phylogenetic diversity. Biol. Conserv. 61, 1–10 (1992). https://doi.org/10.1016/0006-3207(92)91201-3




