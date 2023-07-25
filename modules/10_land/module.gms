*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use model 
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  License Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

*' @title Land

*' @description The land module coordinates and analyzes all land related activities
*' by summing up all land types and calculating the gross changes in land use
*' between two time steps of optimization given the recursive dynamic structure of
*' this model. 

*' @authors Abhijeet Mishra, Shahnila Dunston, Sherman Robinson

*###################### R SECTION START (MODULETYPES) ##########################
$Ifi "%land%" == "basic" $include "./modules/10_land/basic/realization.gms"
*###################### R SECTION END (MODULETYPES) ############################
