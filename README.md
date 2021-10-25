# Downregulation_Immunology

## A sample readme for the implememtation of MMQE-Agent Based Modelling in Mathematical modeling of proliferative immune response initiated by interactions between classical antigen presenting cells under joint antagonistic IL-2 and IL-4 signaling


**We propose an agent-based model denoted as Multiscale Multicellular Quantitative Evaluator (MMQE) implemented using MATLAB.  MMQE combines well-defined  immune response network-based rules and ordinary differential equation-based (ODE) models to capture the complex  dynamic interactions between the proliferation levels of different types of communicating lymphocyte agents mediated by joint regulation of IL-2 and IL-4 to predict the emergent global behavior of the system during an immune response.** 

**We model the activation of the immune system in terms of different activation protocols of helper T cells by the interplay of biological agents of classic antigen presenting cells (APCs) and their joint activation which is confounded by the exposure time of the immune system to external pathogens.**

### DC APC
The DC_APC.m file implements the MMQE-Agent based model defining the activation protocol of the immune system under the control of DC. 

### Bcell APC
The Bcell_APC.m file implements the MMQE-Agent based model by defining the activation protocol of the immune system under the control of Bcell. 

### DC Bcell APC
The DC_Bcell_APC.m file implements the MMQE-Agent based model by defining the activation protocol of the immune system under the control of both DC and Bcell. 

### main simulation
soltrue_1, soltrue_2, and soltrue_3 in the main_simulation defined the ODE functions related to the DC_APC.m, Bcell_APC.m, and DC_Bcell_APC.m function respectively for implementations.
Here, we gave an example of running DC_APC.m under the defined conditions to plot the figure 3.

