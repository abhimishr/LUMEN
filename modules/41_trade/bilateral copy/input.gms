*** |  (C) 2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the model named
*** |  Land Use Model with Environmental Nexus (LUMEN) and is licensed
*** |  under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0. You are
*** |  granted additional permissions described in the License Exception
*** |  version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

table f41_selfsuff(t_all, iso_all, commodity) self suff ratio (1)
$ondelim
$include "./modules/41_trade/input/self_suff.cs3"
$offdelim
;

table f41_export_ratio(t_all, iso_all, commodity) Export ratio (1)
$ondelim
$include "./modules/41_trade/input/export_ratio.cs3"
$offdelim
;

table f41_city_time(fpu,statistical_id)  Estimated travel time in minutes to the nearest urban area in 2015 (minutes)
$ondelim
$include "./modules/41_trade/input/time_city.csv"
$offdelim
;

table f41_port_time(fpu,statistical_id)  Estimated travel time in minutes to the nearest port in 2015 (minutes)
$ondelim
$include "./modules/41_trade/input/time_port.csv"
$offdelim
;

parameter f41_transport_costs(commodity)    Cost of Transportation (USD per tDM per min)
;

$ontext
parameter f41_export_qty(t_all,iso3_from, commodity, iso3_to)  Export quantity (tonne)
/
$ondelim
$include "./modules/41_trade/input/export_qty.csv"
$offdelim
/
;

parameter f41_import_qty(t_all,iso3_from, commodity, iso3_to)  Export quantity (tonne)
/
$ondelim
$include "./modules/41_trade/input/import_qty.csv"
$offdelim
/
;
$offtext