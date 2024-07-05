# PBPKHumanRabbitEyes
[![DOI](https://zenodo.org/badge/125926100.svg)](https://zenodo.org/doi/10.5281/zenodo.1226604)


Authors: J. M. Chowdhury*, E. A. Chacin Ruiz*, and A. N. Ford Versypt

Physiologically based pharmacokinetics for drugs in human and rabbit eyes

The results and script for generating the plots are divided in rabbit and human folders.

In "Human" folder:

Convection_Related_Plots contains the concentration results for the concentration in the vitreous humor and fovea for the case of injection in the middle of the vitreous (considering both slow and fast convection). Matlab scripts generate the plots for the concentration at the vitreous and fovea.

Macula_Concentration_and_Flux contains all the results for concentration and flux values in the macula, divided by the injection location. The matlab script generates plots for concentration ("a" cases), and flux and average concentration ("b" cases).

Model_Verification contains the results of comparing the concentration profiles after injection in the middle vitreous when using three different mesh sizes. The matlab script output is a figure where the concentration profiles of the four cases (1a, 1b, 2a, and 2b) are compared at different mesh sizes.  

Position_Related_Plots contains the concentration results for the concentration in the vitreous humor and fovea for the case of slow convection and injection at the top, middle, and bottomw of the vitreous. Matlab scripts generate the plots for the concentration at the vitreous and fovea.

Human_eye_vitreous_0.05_mL_injection.mph contains the human vitreous geometry. For updating the aqueous humor inlet velocity, change the variable u_AH in "Parameters" to the desired value. For activating/deactivating elimination routes, you need to go to "Transport of Diluted Species" and in "Concentration Boundary Condition" select or not the outer surface of the vitreous humor. To change the bolus injection location go to "Parameters" and update the variables x_drug, y_drug, and z_drug.

In the rabbit folder:

Convection_Related_Plots contains the concentration results for the concentration in the vitreous humor and fovea for the case of injection in the middle of the vitreous (considering both slow and fast convection). Matlab scripts generate the plots for the concentration at the vitreous and fovea.

Macula_Concentration_and_Flux contains all the results for concentration and flux values in the macula, divided by the injection location. The matlab script generates plots for concentration ("a" cases), and flux and average concentration ("b" cases).

Model_Verification contains the results of comparing the concentration profiles after injection in the middle vitreous when using three different mesh sizes. The matlab script output is a figure where the concentration profiles of the four cases (1a, 1b, 2a, and 2b) are compared at different mesh sizes.  

Position_Related_Plots contains the concentration results for the concentration in the vitreous humor and fovea for the case of slow convection and injection at the top, middle, and bottomw of the vitreous. Matlab scripts generate the plots for the concentration at the vitreous and fovea.

Rabbit_eye_vitreous_0.05_mL_injection.mph contains the rabbit vitreous geometry. For updating the aqueous humor inlet velocity, change the variable u_AH in "Parameters" to the desired value. For activating/deactivating elimination routes, you need to go to "Transport of Diluted Species" and in "Concentration Boundary Condition" select or not the outer surface of the vitreous humor. To change the bolus injection location go to "Parameters" and update the variables x_drug, y_drug, and z_drug.
