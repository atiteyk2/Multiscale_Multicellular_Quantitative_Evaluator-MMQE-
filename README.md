# Downregulation_Immunology

We propose an agent-based model denoted as Multiscale Multicellular Quantitative Evaluator (MMQE) implemented using MATLAB.  MMQE combines well-defined  immune response network-based rules and ordinary differential equation-based (ODE) models to capture the complex  dynamic interactions between the proliferation levels of different types of communicating lymphocyte agents mediated by joint regulation of IL-2 and IL-4 to predict the emergent global behavior of the system during an immune response. 

We model the activation of the immune system in terms of different activation protocols of helper T cells by the interplay of biological agents of classic antigen presenting cells (APCs) and their joint activation which is confounded by the exposure time of the immune system to external pathogens.

**DC APC**
The DC_APC.m file implements the MMQE-Agent based model defining the activation protocol of the immune system under the control of DC. 

Bcell APC
The Bcell_APC.m file implements the MMQE-Agent based model by defining the activation protocol of the immune system under the control of Bcell. 

DC Bcell APC
The DC_Bcell_APC.m file implements the MMQE-Agent based model by defining the activation protocol of the immune system under the control of Bcell. 

Main _simulation
soltrue_1, soltrue_2, and soltrue_3 defined the ODE functions DC_APC.m, Bcell_APC.m, and DC_Bcell_APC.m respectively for implementations.
Here, we gave example of running DC_APC.m under the defined conditions to plot the figure 3.
![image](https://user-images.githubusercontent.com/92449409/138775920-33917a41-dbd1-4785-b085-70b298475f24.png)
