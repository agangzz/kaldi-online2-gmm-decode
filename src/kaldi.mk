# This file was generated using the following command:
# ./configure --static --openblas-root=../tools/OpenBLAS-master/install --clapack-root=../tools/OpenBLAS-master/install

CONFIGURE_VERSION := 7

# Toolchain configuration

CXX = mips-linux-gnu-g++
AR = mips-linux-gnu-ar
AS = mips-linux-gnu-as
RANLIB = mips-linux-gnu-ranlib

# Base configuration

DOUBLE_PRECISION = 0
OPENFSTINC = ../../tools/openfst/include
OPENFSTLIBS = ../../tools/openfst/lib/libfst.a
OPENFSTLDFLAGS = 

OPENBLASINC = ../../tools/openBLAS/include
OPENBLASLIBS = ../../tools/openBLAS/lib/libopenblas.a -lgfortran

OPENBLASLIBS += ../../tools/openBLAS/lib/libclapack.a 
OPENBLASLIBS += ../../tools/openBLAS/lib/libblas.a
OPENBLASLIBS += ../../tools/openBLAS/lib/libf2c.a

# OpenBLAS specific Linux configuration

ifndef DOUBLE_PRECISION
$(error DOUBLE_PRECISION not defined.)
endif
ifndef OPENFSTINC
$(error OPENFSTINC not defined.)
endif
ifndef OPENFSTLIBS
$(error OPENFSTLIBS not defined.)
endif
ifndef OPENBLASINC
$(error OPENBLASINC not defined.)
endif
ifndef OPENBLASLIBS
$(error OPENBLASLIBS not defined.)
endif

CXXFLAGS = -std=c++11 -I.. -I$(OPENFSTINC) $(EXTRA_CXXFLAGS) \
           -Wall -Wno-sign-compare -Wno-unused-local-typedefs \
           -Wno-deprecated-declarations -Winit-self \
           -DKALDI_DOUBLEPRECISION=$(DOUBLE_PRECISION) \
           -DHAVE_EXECINFO_H=1 -DHAVE_CXXABI_H -DHAVE_OPENBLAS -I$(OPENBLASINC) \
           -pthread \
           -g # -O0 -DKALDI_PARANOID

ifeq ($(KALDI_FLAVOR), dynamic)
CXXFLAGS += -fPIC
endif

# Compiler specific flags
COMPILER = $(shell $(CXX) -v 2>&1)
ifeq ($(findstring clang,$(COMPILER)),clang)
# Suppress annoying clang warnings that are perfectly valid per spec.
CXXFLAGS += -Wno-mismatched-tags
endif

LDFLAGS = $(EXTRA_LDFLAGS) $(OPENFSTLDFLAGS) -rdynamic
LDLIBS = $(EXTRA_LDLIBS) $(OPENFSTLIBS) $(OPENBLASLIBS) -lm -lpthread -ldl
# Environment configuration

