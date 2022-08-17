#!/bin/bash
export SetCommandStreamReceiver=2 ProductFamilyOverride=pvc RebuildPrecompiledKernels=1 ForceDeviceId=0x0bd5 OverrideRevision=157
#export SC_KEEP_GENCODE=1
#export SC_PRINT_PASS_RESULT=1
#export SC_VERBOSE=2
source /home/xinanlin/cm_sdk/setupenv.sh
source ./env.sh
export PYTHONPATH=/home/xinanlin/kgen
cd build
./tests/gtest/test_zzgpu_gelu
./tests/gtest/test_zzgpu_brgemm
