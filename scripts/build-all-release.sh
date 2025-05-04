#!/bin/sh
mkdir -p build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DLLAMA_METAL=on && make -j$(nproc)
../scripts/copy-release-products.sh