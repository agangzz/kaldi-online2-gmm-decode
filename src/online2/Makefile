
all:

include ../kaldi.mk

TESTFILES =

OBJFILES = online-gmm-decodable.o online-feature-pipeline.o \
           online-gmm-decoding.o online-timing.o \
           online-endpoint.o onlinebin-util.o online-speex-wrapper.o

LIBNAME = kaldi-online2

ADDLIBS = ../ivector/kaldi-ivector.a ../decoder/kaldi-decoder.a \
          ../lat/kaldi-lat.a ../hmm/kaldi-hmm.a ../feat/kaldi-feat.a \
          ../transform/kaldi-transform.a ../gmm/kaldi-gmm.a \
          ../tree/kaldi-tree.a ../util/kaldi-util.a \
          ../matrix/kaldi-matrix.a ../base/kaldi-base.a




include ../makefiles/default_rules.mk

