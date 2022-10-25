# PCE-based-ANCOVA
## System topology

* The IEEE 24 bus system topology is referred to [1].

## Deterministic tool for TTC evaluation

The transfer capability is calculated using DSATools/VSAT referred to User Manuals of PSAT Powerflow & Short-circuit Analysis Tool and VSAT Voltage Security Assessment Tool; configuration files are:

* Case24.m: system data;

* Case24.crt: constraints file (voltage limit, thermal limit, generation capacity limit);

* Case24.prm: Security limit calculation parameters defined;

* Case24.ctg: contingency list;

* Case24.trf: transaction direction defined.

## Random input data configuration 

**References**
[1] Larrahondo, D., Moreno, R., Chamorro, H. R., & Gonzalez-Longatt, F. (2021). Comparative performance of multi-period ACOPF and multi-period DCOPF under high integration of wind power. Energies, 14(15), 4540.
