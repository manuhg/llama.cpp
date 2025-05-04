#!/bin/sh
mkdir -p build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DLLAMA_METAL=on && make -j$(nproc)
mkdir -p libs
find . -type f -name "*.a" -exec cp "{}" libs/ \;
cp libs/* ~/proj_tldr/tldr-dekstop/release-products/libs
cp -rv ../include/* ~/proj_tldr/tldr-dekstop/release-products/include
cp -rv ../ggml/include/* ~/proj_tldr/tldr-dekstop/release-products/include
