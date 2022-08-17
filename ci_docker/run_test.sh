#!/bin/bash
cd /home/xinanlin/test-preci
export SetCommandStreamReceiver=2 ProductFamilyOverride=pvc RebuildPrecompiledKernels=1 ForceDeviceId=0x0bd5 OverrideRevision=157
#export SC_KEEP_GENCODE=1
#export SC_PRINT_PASS_RESULT=1
#export SC_VERBOSE=2
source /home/xinanlin/cm_sdk/setupenv.bash
source ./env.sh
export PYTHONPATH=/home/xinanlin/kgen
cd /home/xinanlin/test-preci/build
./tests/gtests/test_zzgpu_gelu
./tests/gtests/test_zzgpu_brgemm
