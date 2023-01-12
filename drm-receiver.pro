######################################################################
# Automatically generated by qmake (2.01a) Wed Jun 19 18:47:11 2013
######################################################################
TEMPLATE = app
QT	+= widgets xml
CONFIG	+= console
#CONFIG	-= console
TARGET	= drm-receiver
QMAKE_CXXFLAGS	+= -std=c++14 
QMAKE_CFLAGS	+= -flto -ffast-math 
QMAKE_CXXFLAGS	+= -flto -ffast-math 
QMAKE_LFLAGS	+= -flto
#QMAKE_CFLAGS	+= -g
#QMAKE_CXXFLAGS	+= -g
#QMAKE_LFLAGS	+= -g
#QMAKE_CXXFLAGS	+= -fsanitize=address
#QMAKE_CFLAGS	+= -fsanitize=address
#QMAKE_LFLAGS	+= -fsanitize=address
RC_ICONS	=  drm.ico
RESOURCES       += resources.qrc

DEPENDPATH += .  \
	      filters \
	      various \
	      output \
	      scopes-qwt6 \
	      devices \
	      devices/filereader \
	      the-decoder \
	      the-decoder/data \
	      the-decoder/fac \
	      the-decoder/equalizer \
	      the-decoder/msc \
	      the-decoder/ofdm \
	      the-decoder/parameters \
	      the-decoder/sdc \
	      the-decoder/support 

INCLUDEPATH += .  \
	      filters \
	      various \
	      output \
	      scopes-qwt6 \
	      devices \
	      devices/filereader \
	      the-decoder \
	      the-decoder/data \
	      the-decoder/fac \
	      the-decoder/equalizer \
	      the-decoder/msc \
	      the-decoder/ofdm \
	      the-decoder/parameters \
	      the-decoder/sdc \
	      the-decoder/support 

#CONFIG += static

# Input
HEADERS += ./radio-constants.h \
	   ./radio.h \
	   ./bandplan.h \
#	   ./output/upconverter.h \
	   ./output/audiosink.h \
           ./various/ringbuffer.h \
           ./various/fft.h \
	   ./various/shifter.h \
#	   ./various/utilities.h \
	   ./various/slidingfft.h \
	   ./various/program-list.h \
	   ./various/popup-keypad.h \
	   ./various/downconverter.h \
	   ./various/rate-converter.h \
	   ./various/up-converter.h \
           ./filters/fft-filters.h \
           ./filters/fir-filters.h \
           ./filters/iir-filters.h \
	   ./filters/decimating_filter.h \
	   ./filters/hilbertfilter.h \
	   ./scopes-qwt6/virtual-scope.h \
	   ./scopes-qwt6/spectrogramdata.h \
	   ./scopes-qwt6/waterfall-scope.h \
	   ./scopes-qwt6/spectrum-scope.h \
           ./scopes-qwt6/scope.h \
           ./scopes-qwt6/fft-scope.h \
	   ./devices/device-handler.h \
	   ./devices/deviceselect.h \
           ./devices/filereader/filereader.h \
           ./devices/filereader/filehulp.h \
	   ./the-decoder/drm-decoder.h \
	   ./the-decoder/decimator-25.h \
	   ./the-decoder/decimator.h \
	   ./the-decoder/drm-bandfilter.h \
	   ./the-decoder/eqdisplay.h \
	   ./the-decoder/iqdisplay.h \
#	   ./the-decoder/lowpassfilter.h \
	   ./the-decoder/basics.h \
	   ./the-decoder/utilities.h \
#	   ./the-decoder/data/neaacdec.h \
#	   ./the-decoder/data/aac-processor-faad.h \
	   ./the-decoder/data/data-processor.h \
	   ./the-decoder/data/message-processor.h \
#	   ./the-decoder/data/up-filter.h \
	   ./the-decoder/fac/fac-tables.h \
	   ./the-decoder/fac/fac-processor.h \
	   ./the-decoder/sdc/sdc-include.h \
	   ./the-decoder/sdc/sdc-processor.h \
	   ./the-decoder/sdc/sdc-streamer.h \
	   ./the-decoder/msc/backend-controller.h \
	   ./the-decoder/msc/msc-handler.h \
	   ./the-decoder/msc/msc-handler-qam16.h \
	   ./the-decoder/msc/msc-handler-qam64.h \
	   ./the-decoder/msc/msc-processor.h \
	   ./the-decoder/msc/msc-streamer.h \
	   ./the-decoder/ofdm/correlator.h \
	   ./the-decoder/ofdm/freqsyncer.h \
	   ./the-decoder/ofdm/reader.h \
	   ./the-decoder/ofdm/timesync.h \
	   ./the-decoder/ofdm/word-collector.h \
	   ./the-decoder/equalizer/equalizer-1.h \
	   ./the-decoder/equalizer/equalizer-base.h \
	   ./the-decoder/equalizer/matrix2.h \
	   ./the-decoder/equalizer/referenceframe.h \
	   ./the-decoder/parameters/msc-config.h \
	   ./the-decoder/parameters/puncture-tables.h \
	   ./the-decoder/parameters/state-descriptor.h \
	   ./the-decoder/support/checkcrc.h \
	   ./the-decoder/support/deinterleaver.h \
	   ./the-decoder/support/drm-shifter.h \
	   ./the-decoder/support/fft-complex.h \
	   ./the-decoder/support/mapper.h \
	   ./the-decoder/support/mer16-values.h \
	   ./the-decoder/support/mer4-values.h \
	   ./the-decoder/support/mer64-values.h \
	   ./the-decoder/support/my-array.h \
	   ./the-decoder/support/prbs.h \
	   ./the-decoder/support/protlevels.h \
	   ./the-decoder/support/qam16-metrics.h \
	   ./the-decoder/support/qam4-metrics.h \
	   ./the-decoder/support/qam64-metrics.h \
	   ./the-decoder/support/viterbi-drm.h 

FORMS	+= ./newradio.ui \
	   ./devices/filereader/filereader-widget.ui
FORMS	+= ./the-decoder/drmdecoder.ui

SOURCES += ./main.cpp \
	   ./radio.cpp \
	   ./bandplan.cpp \
#	   ./output/upconverter.cpp \
           ./output/audiosink.cpp \
           ./various/fft.cpp \
	   ./various/popup-keypad.cpp \
           ./various/shifter.cpp \
#	   ./various/utilities.cpp \
	   ./various/slidingfft.cpp \
	   ./various/program-list.cpp \
	   ./various/downconverter.cpp \
	   ./various/rate-converter.cpp \
	   ./various/up-converter.cpp \
           ./filters/fft-filters.cpp \
           ./filters/fir-filters.cpp \
           ./filters/iir-filters.cpp \
	   ./filters/decimating_filter.cpp \
	   ./filters/hilbertfilter.cpp \
	   ./scopes-qwt6/virtual-scope.cpp \
	   ./scopes-qwt6/waterfall-scope.cpp \
	   ./scopes-qwt6/spectrum-scope.cpp \
           ./scopes-qwt6/scope.cpp \
           ./scopes-qwt6/fft-scope.cpp \
	   ./devices/device-handler.cpp \
	   ./devices/deviceselect.cpp \
           ./devices/filereader/filereader.cpp \
           ./devices/filereader/filehulp.cpp \
	   ./the-decoder/drm-decoder.cpp \
	   ./the-decoder/decimator-25.cpp \
	   ./the-decoder/decimator.cpp \
	   ./the-decoder/drm-bandfilter.cpp \
	   ./the-decoder/eqdisplay.cpp \
	   ./the-decoder/iqdisplay.cpp \
#	   ./the-decoder/lowpassfilter.cpp \
	   ./the-decoder/utilities.cpp \
	   ./the-decoder/basics.cpp \
#	   ./the-decoder/data/aac-processor-faad.cpp \
	   ./the-decoder/data/data-processor.cpp \
	   ./the-decoder/data/message-processor.cpp \
#	   ./the-decoder/data/lowpassfir.cpp \
	   ./the-decoder/data/up-filter.cpp \
	   ./the-decoder/fac/fac-tables.cpp \
	   ./the-decoder/fac/fac-processor.cpp \
	   ./the-decoder/sdc/sdc-processor.cpp \
	   ./the-decoder/sdc/sdc-streamer.cpp \
	   ./the-decoder/msc/backend-controller.cpp \
	   ./the-decoder/msc/msc-handler.cpp \
	   ./the-decoder/msc/msc-handler-qam16.cpp \
	   ./the-decoder/msc/msc-handler-qam64.cpp \
	   ./the-decoder/msc/msc-processor.cpp \
	   ./the-decoder/msc/msc-streamer.cpp \
	   ./the-decoder/ofdm/correlator.cpp \
	   ./the-decoder/ofdm/freqsyncer.cpp \
	   ./the-decoder/ofdm/reader.cpp \
	   ./the-decoder/ofdm/timesync.cpp \
	   ./the-decoder/ofdm/word-collector.cpp \
	   ./the-decoder/equalizer/equalizer-1.cpp \
	   ./the-decoder/equalizer/equalizer-base.cpp \
	   ./the-decoder/equalizer/matrix2.cpp \
	   ./the-decoder/equalizer/referenceframe.cpp \
	   ./the-decoder/parameters/msc-config.cpp \
	   ./the-decoder/parameters/puncture-tables.cpp \
	   ./the-decoder/parameters/state-descriptor.cpp \
	   ./the-decoder/support/checkcrc.cpp \
	   ./the-decoder/support/deinterleaver.cpp \
	   ./the-decoder/support/drm-shifter.cpp \
	   ./the-decoder/support/fft-complex.cpp \
	   ./the-decoder/support/mapper.cpp \
	   ./the-decoder/support/mer16-values.cpp \
	   ./the-decoder/support/mer4-values.cpp \
	   ./the-decoder/support/mer64-values.cpp \
	   ./the-decoder/support/prbs.cpp \
	   ./the-decoder/support/protlevels.cpp \
	   ./the-decoder/support/qam16-metrics.cpp \
	   ./the-decoder/support/qam4-metrics.cpp \
	   ./the-decoder/support/qam64-metrics.cpp \
	   ./the-decoder/support/viterbi-drm.cpp

unix {
exists ("./.git") {
   GITHASHSTRING = $$system(git rev-parse --short HEAD)
   !isEmpty(GITHASHSTRING) {
       message("Current git hash = $$GITHASHSTRING")
       DEFINES += GITHASH=\\\"$$GITHASHSTRING\\\"
   }
}
isEmpty(GITHASHSTRING) {
    DEFINES += GITHASH=\\\"------\\\"
}

DESTDIR		= ./linux-bin
CONFIG		+= sdrplay-v2
CONFIG		+= sdrplay
CONFIG		+= rtlsdr
CONFIG		+= hackrf
DEFINES		+= HAVE_DRM_DECODER
DEFINES		+= ESTIMATOR_1
CONFIG		+= fdk-aac
#CONFIG		+= faad
# choose one of the estimators
# CONFIG	+= estimator_1
# CONFIG	+= estimator_2	does not work yet
# CONFIG	+= estimator_jan
# CONFIG	+= estimator_eigen
CONFIG		+= estimator_arma

LIBS		+= -L/usr/lib64
LIBS		+= -L/lib64
LIBS            += -lfaad_drm
INCLUDEPATH	+= /usr/include/qt5/qwt
LIBS		+= -lqwt-qt5 -lrt -lsndfile -lsamplerate -lportaudio -lusb-1.0 -lfftw3f -ldl
LIBS		+= -lqwt-qt5 -lrt -lsndfile -lsamplerate -lportaudio -lusb-1.0 -lfftw3f -ldl
}

win32 {
exists ("./.git") {
   GITHASHSTRING = $$system(git rev-parse --short HEAD)
   !isEmpty(GITHASHSTRING) {
       message("Current git hash = $$GITHASHSTRING")
       DEFINES += GITHASH=\\\"$$GITHASHSTRING\\\"
   }
}
isEmpty(GITHASHSTRING) {
    DEFINES += GITHASH=\\\"------\\\"
}

DESTDIR		= /usr/shared/w32-programs/windows-drm2
CONFIG		+= sdrplay-v2
CONFIG		+= sdrplay
CONFIG		+= hackrf
CONFIG		+= rtlsdr
# choose one of the estimators
# CONFIG	+= estimator_1
# CONFIG	+= estimator_2	does not work yet
# CONFIG	+= estimator_jan
 CONFIG	+= estimator_eigen
#CONFIG		+= estimator_arma
# includes in mingw differ from the includes in fedora linux
INCLUDEPATH += /usr/i686-w64-mingw32/sys-root/mingw/include
INCLUDEPATH += /usr/i686-w64-mingw32/sys-root/mingw/include/eigen3
INCLUDEPATH += /usr/i686-w64-mingw32/sys-root/mingw/include/qt5/qwt
INCLUDEPATH += /usr/local/include
LIBS    += -L/usr/i686-w64-mingw32/sys-root/mingw/lib
LIBS    += -lfftw3f
LIBS    += -lportaudio
LIBS    += -lqwt-qt5
#LIBS    += -lqwt
LIBS    += -lusb-1.0
LIBS    += -lsndfile
LIBS    += -lsamplerate
LIBS    += -lole32
#CONFIG		+= -lfaad_drm
CONFIG		+= fdk-aac
LIBS    += -lwinmm
}

#       the SDRplay
#
sdrplay-v2 {
        DEFINES         += HAVE_SDRPLAY_V2
        FORMS           += ./devices/sdrplay-handler-v2/sdrplay-widget-v2.ui
        DEPENDPATH      += ./devices/sdrplay-handler-v2
        INCLUDEPATH     += ./devices/sdrplay-handler-v2
        HEADERS         += ./devices/sdrplay-handler-v2/sdrplay-handler-v2.h \
                           ./devices/sdrplay-handler-v2/sdrplayselect.h
        SOURCES         += ./devices/sdrplay-handler-v2/sdrplay-handler-v2.cpp \
                           ./devices/sdrplay-handler-v2/sdrplayselect.cpp
}

sdrplay {
        DEFINES         += HAVE_SDRPLAY_V3
        FORMS           += ./devices/sdrplay-handler-v3/sdrplay-widget-v3.ui
        DEPENDPATH	+= ./devices/sdrplay-handler-v3
        INCLUDEPATH     += ./devices/sdrplay-handler-v3
        INCLUDEPATH     += ./devices/sdrplay-handler-v3/include-v3
        HEADERS         += ./devices/sdrplay-handler-v3/sdrplay-handler-v3.h \
                           ./devices/sdrplay-handler-v3/sdrplay-commands.h \
	                   ./devices/sdrplay-handler-v3/Rsp-device.h \
	                   ./devices/sdrplay-handler-v3/Rsp1A-handler.h \
	                   ./devices/sdrplay-handler-v3/RspII-handler.h \
	                   ./devices/sdrplay-handler-v3/RspDuo-handler.h \
	                   ./devices/sdrplay-handler-v3/RspDx-handler.h
        SOURCES         += ./devices/sdrplay-handler-v3/Rsp-device.cpp \
	                   ./devices/sdrplay-handler-v3/sdrplay-handler-v3.cpp \
	                   ./devices/sdrplay-handler-v3/Rsp1A-handler.cpp \
	                   ./devices/sdrplay-handler-v3/RspII-handler.cpp \
	                   ./devices/sdrplay-handler-v3/RspDuo-handler.cpp \
	                   ./devices/sdrplay-handler-v3/RspDx-handler.cpp 
}

hackrf	{
	DEFINES		+= HAVE_HACKRF
        FORMS           += ./devices/hackrf-handler/hackrf-widget.ui
        DEPENDPATH	+= ./devices/hackrf-handler
        INCLUDEPATH	+= ./devices/hackrf-handler
        HEADERS         += ./devices/hackrf-handler/hackrf-handler.h 
        SOURCES         += ./devices/hackrf-handler/hackrf-handler.cpp 
}

rtlsdr	{
	DEFINES		+= HAVE_RTLSDR
        FORMS           += ./devices/rtlsdr-handler/rtlsdr-widget.ui
        DEPENDPATH	+= ./devices/rtlsdr-handler
        INCLUDEPATH	+= ./devices/rtlsdr-handler
        HEADERS         += ./devices/rtlsdr-handler/rtlsdr-handler.h  \
	                   ./devices/rtlsdr-handler/dongleselect.h
        SOURCES         += ./devices/rtlsdr-handler/rtlsdr-handler.cpp \
	                   ./devices/rtlsdr-handler/dongleselect.cpp
}

pmsdr	{
	DEFINES		+= HAVE_PMSDR
	TARGET		= swradio-pmsdr
	FORMS		+= ./devices/pmsdr-handler/pmsdr-widget.ui
	DEPENDPATH	+= ./devices/pmsdr-handler
        INCLUDEPATH     += ./devices/pmsdr-handler
        HEADERS         += ./devices/pmsdr-handler/pmsdr-handler.h \
			   ./devices/pmsdr-handler/pmsdr_comm.h \
	                   ./devices/pmsdr-handler/pmsdr_usb.h \
	                   ./devices/pmsdr-handler/si570-handler.h 
        SOURCES         += ./devices/pmsdr-handler/pmsdr-handler.cpp \
			   ./devices/pmsdr-handler/pmsdr_comm.cpp \
	                   ./devices/pmsdr-handler/pmsdr_usb.cpp \
	                   ./devices/pmsdr-handler/si570-handler.cpp 
	CONFIG		+= cardreader
}

fdk-aac	{
DEFINES		+= __WITH_FDK_AAC__
unix {
#LIBS		+= -lfdk-aac
}
win32 {
#LIBS		+= -lfdk-aac-2
}
#LIBS		+= -lfdk-aac -larmadillo
INCLUDEPATH	+= /usr/local/include/fdk-aac
HEADERS		+= ./the-decoder/data/aac-processor-fdk.h \
	           ./the-decoder/data/xheaac-processor.h \
	           ./the-decoder/aac-handler.h
SOURCES		+= ./the-decoder/data/aac-processor-fdk.cpp \
	           ./the-decoder/data/xheaac-processor.cpp  \
	           ./the-decoder/aac-handler.cpp
}

faad	{
DEFINES		+= __WITH_FAAD__
HEADERS		+=  ./the-decoder/data/aac-processor-faad.h  \
#	            ./the-decoder/data/drm-aacdecoder.h \
	            ./the-decoder/data/neaacdec.h 
SOURCES		+= ./the-decoder/data/aac-processor-faad.cpp  
#	           ./the-decoder/data/drm-aacdecoder.cpp 
LIBS		+= -lfaad_drm
#LIBS		+= -lfaad_drm -larmadillo
}

estimator_1 {
DEFINES		+= ESTIMATOR_1
HEADERS		+= ./the-decoder/equalizer/estimator-1.h
SOURCES		+= ./the-decoder/equalizer/estimator-1.cpp
}

estimator_2 {
DEFINES		+= ESTIMATOR_2
INCLUDEPATH	+= /usr/include/eigen3
HEADERS		+= ./the-decoder/equalizer/estimator-2.h
SOURCES		+= ./the-decoder/equalizer/estimator-2.cpp
}

# 
estimator_jan {
DEFINES		+= ESTIMATOR_JAN
HEADERS		+= ./the-decoder/equalizer/estimator-jan-2.h
SOURCES		+= ./the-decoder/equalizer/estimator-jan-2.cpp
}

# you have the eigen template library installed?
estimator_eigen {
DEFINES		+= ESTIMATOR_EIGEN
INCLUDEPATH	+= /usr/include/eigen3
HEADERS		+= ./the-decoder/equalizer/estimator-eigen-2.h
SOURCES		+= ./the-decoder/equalizer/estimator-eigen-2.cpp
}

# you have armadillo installed ?
estimator_arma {
DEFINES		+= ESTIMATOR_ARMA
HEADERS		+= ./the-decoder/equalizer/estimator-arma-2.h
SOURCES		+= ./the-decoder/equalizer/estimator-arma-2.cpp
LIBS		+= -larmadillo
}

