*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

****************************PREPROCESSING START*********************************
* In this section everything is calculated that is not influenced by the
* optimization process. Hence these lines CAN INFLUENCE the optimization process
* but CANNOT BE INFLUENCED by it.

$batinclude "./modules/include.gms" start

$batinclude "./modules/include.gms" preloop

*****************************PREPROCESSING END**********************************


* create dummy file (this is necessary to be able to use put_utility and it has
* to be done here because a file declaration cannot be inside a loop
file dummy; dummy.pw=2000; put dummy;


************************OPTIMIZATION PROCESS START******************************
* This section contains only sourcecode that is directly connected to the
* optimization process. That means that everything on the following lines
* INFLUENCES and IS INFLUENCED by the optimization process (except the
* redefinition on preprocessed data).
* Hence one can describe this section together with the constraints section
* as "model-core".

* clear ct set
ct(t) = no;
pt(t) = no;

***************************TIMESTEP LOOP START**********************************
$label TimeLoop
$if not set TIMESTEP $set TIMESTEP 0

loop (t,

* set ct to current time period
    ct(t) = yes;
    pt(t) = yes$(ord(t) = 1);
    pt(t-1) = yes$(ord(t) > 1);
    
      display "Year";
      display ct;
      display "Previous Year";
      display pt;

$batinclude "./modules/include.gms" presolve

$batinclude "./modules/include.gms" solve

**************************SOLVE STATEMENT END***********************************

$batinclude "./modules/include.gms" postsolve

*************************OPTIMIZATION PROCESS END*******************************

**********************WRITE ALL DATA IN 1 GDX FILE******************************
  Execute_Unload "fulldata.gdx";

* clear ct and pt set
  ct(t) = no;
  pt(t) = no$(ord(t) = 1);
  pt(t-1) = no$(ord(t) > 1);

   put_utility 'save' / 'restart_' t.tl:0;;
********************************************************************************
);
****************************TIMESTEP LOOP END***********************************
