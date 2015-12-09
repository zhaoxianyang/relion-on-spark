#!/usr/bin/env csh
/public/EM/CTFFIND/ctffind3.exe > Micrographs/Falcon_2012_06_12-15_41_22_0_ctffind3.log << EOF
Micrographs/Falcon_2012_06_12-15_41_22_0.mrc
Micrographs/Falcon_2012_06_12-15_41_22_0.ctf
2, 300, 0.1, 39548, 14
256, 100, 8, 5000, 50000, 500, 0
EOF
