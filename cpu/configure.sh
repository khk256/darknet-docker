#!/bin/bash

sed -i -e 's/AVX=0/AVX=1/g' Makefile
sed -i -e 's/OPENMP=0/OPENMP=1/g' Makefile