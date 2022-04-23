#!/bin/bash

sed -i -e 's/GPU=0/GPU=1/g' Makefile
sed -i -e 's/CUDNN=0/CUDNN=1/g' Makefile
sed -i -e 's/CUDNN_HALF=0/CUDNN_HALF=1/g' Makefile