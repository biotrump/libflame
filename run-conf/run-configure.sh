#!/bin/bash

# The install prefix specifies the root directory of the installation.
#export FLAME_INSTALL_PREFIX=$HOME/flame
export FLAME_INSTALL_PREFIX=/home/thomas/build/libFLAME/libflame.git/flame

# Override the default compiler search order and default compiler flags.
export CC=gcc
#export CC=icc

# Add extra flags to the C compiler.
# NOTE: DO NOT INSERT ANY FLAGS IN EXTRA_FLAGS THAT MIGHT DISRUPT NUMERICAL
# PROPERTIES OF SLAMCH/DLAMCH.
export EXTRA_CFLAGS="-march=native"

# Run configure.
./configure --prefix=${FLAME_INSTALL_PREFIX} \
            --disable-verbose-make-output \
            --enable-static-build \
            --enable-dynamic-build \
            --disable-autodetect-f77-ldflags \
            --disable-autodetect-f77-name-mangling \
            --disable-max-arg-list-hack \
            --enable-non-critical-code \
            --enable-builtin-blas \
            --disable-lapack2flame \
            --disable-external-lapack-for-subproblems \
            --disable-external-lapack-interfaces \
            --enable-blas3-front-end-cntl-trees \
            --enable-multithreading=pthreads \
            --enable-supermatrix \
            --disable-gpu \
            --enable-vector-intrinsics=sse \
            --enable-memory-alignment=16 \
            --enable-ldim-alignment \
            --enable-optimizations \
            --enable-warnings \
            --enable-debug \
            --disable-profiling \
            --enable-internal-error-checking=full \
            --enable-memory-leak-counter \
            --enable-blis-use-of-fla-malloc \
            --disable-goto-interfaces \
            --enable-cblas-interfaces \
            --enable-portable-timer \
            --disable-windows-build \
            --disable-scc \
            --disable-tidsp

