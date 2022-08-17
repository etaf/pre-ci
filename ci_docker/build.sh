#!/bin/bash
rm -rf build && mkdir build
cd build
cmake .. -DIGC_PATH=/home/xinanlin/cm_sdk -DCMAKE_BUILD_TYPE=Debug  && make -j$(nproc)
make test_zzgpu_cmfakejit
make test_zzgpu_gelu
make test_zzgpu_brgemm
make test_zzgpu_brgemm_fusion




