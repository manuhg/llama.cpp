#!/bin/sh
mkdir -p libs
find .. -type f -name "*.a" -exec cp "{}" libs/ \;

mkdir -p ~/proj_tldr/tldr-dekstop/release-products/libs/llama.cpp
mkdir -p ~/proj_tldr/tldr-dekstop/release-products/include/llama.cpp

cp libs/* ~/proj_tldr/tldr-dekstop/release-products/libs/llama.cpp
cp -rv ../include/* ~/proj_tldr/tldr-dekstop/release-products/include/llama.cpp
cp -rv ../ggml/include/* ~/proj_tldr/tldr-dekstop/release-products/include/llama.cpp
cp -rv ../common/common.h ~/proj_tldr/tldr-dekstop/release-products/include/llama.cpp
cp -rv ../common/arg.h ~/proj_tldr/tldr-dekstop/release-products/include/llama.cpp
