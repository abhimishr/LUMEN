*** |  (C) 2008-2023 International Food Policy Research Institute (IFPRI)
*** |  authors, and contributors. This file is part of the simple land use
*** |  and licensed under AGPL-3.0-or-later. Under Section 7 of AGPL-3.0
*** |  you are granted additional permissions described in the License
*** |  Exception, version 1.0 (see LICENSE file).
*** |  Contact: A.Mishra@cgiar.org

parameters
  p99_modelstat(t)  modelstat indicator (1)
  p99_num_nonopt(t) numNOpt indicator (1)
;

scalars
  s99_counter           counter (1)
  s99_modelstat_previter  modelstat of previous iteration (1)
  s99_optfile_previter    optfile used in previous iteration (1)
;
