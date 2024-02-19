

-----------------------------------------------------------------------------
Redesign and re-implementation of the drm decoder
-----------------------------------------------------------------------------

DRM (Digital Radio Mondiale) is - as the name suggests - a form of digital
radio. 
In Europe DRM is not very popular, most stations that started
a DRM transmission in the first decade of the century
already stopped. However,
Rumenia and Kuwait still have a regular DRM transmission that I can receive,
the website "http://www.hfcc.org/drm/" gives an overview.

![overview](/drm-receiver.png?raw=true)

The DRMm receiver is an experimental tool, a heavily reduced swradio,
with a single decoder, just for DRM.
The decoder uses the FDK_AAC library for AAC decoding, meaning that
**xHE-AAC** can be decoded next to **AAC**.

-----------------------------------------------------------------------
The decoder
-----------------------------------------------------------------------


The decoder takes a samplerate of 12000
Samples/second as input. 

The incoming sample stream is best seen as a sequence of **words**,
for mode B, such a word contains just over 300 samples.

Apaprt from the time synchronization, i.e. finding in the input stream
where the **words** start, all processing is done in the **frequency domain**.
The incoming **words** are processed by an FFT processor,
and each incoming word is eventually translated into a word
containing just over 200 carriers (The FFT is done on segments of 256 samples).
These translated words are grouped into **frames** (for mode B a frame
contains 15 words) and each group of 3 frames is grouped into a **superframe**.

The **layout** of frames and superframes is defined in the standards,
i.e. it is defined which carriers are used for synchonization, which carriers
belong to the FAC (Fast Access Channel), which carriers belong to  the
SDR (Service Description Channel) and which carriers contain the payload.

![overview](/drm-decoder-1.png?raw=true)

The decoder gives quite some information on the state of decoding.
The 4 boxes top right tell about the synchronization reached,
from top to bottom
 * time sync tells whether or not the software thinks the input blocks
in the input sample stream are identified;
 * FAC sync tells whether or not decoding the FAC is successfull.
The FAC contains specified carriers, with data encoded as QAM4, and
it gives general information on the structure of the transmission;
 * SDC sync tells whether or not decoding the SDC is successfull.
The SDC contains - as the name suggests - data telling where to find
the sevice data and how to interpret it.
SDC data is encoded as QAM4 or QAM16;
 *aacSync tells about the decoding of the selected service. While the previous
ones dealt with the whole content of the transmission, the selected service
may be just one of 4. The payload of the transmision is encoded in QAM16
or QAM64 format. The audio services are encoded as AAC streams or xHE-AAC
streams, that is why this software uses the FDK_AAC library, since that
is able to handle both formats.

The boxes, jer elabeled "3" and "c" tell that in the transmission the
mode "c" was detected and the spectrum layout "3" (the latter just indicating
a 10 KHz wide signal).
The box with "QAM16" tells that the audio content is encoded in QAM16, i.e
each complex carrier takes one of 16 positions (which can be decoded into 
4 bits), and the box with "AAC" tells that the audio was encoded in AAC format
(the other formak is xHE-AAC).


The 3 numbers  in the middle of the widget give an indication of the
quality of the decoding.

Top left of the widget the frequency offset is indicated,
the total offset can be obtained by adding the two numbers.

The label tells that the picture is taken from a (recorded) transmission
of "the voice of Nigeria"


The "scope" with the yellow arrows gives an impression on the amount
with which the signal has to be corrected. In the frequency domain
signal, some carriers are known to have a predefined phase and amplitude,
i.e. pilots. The scope tells the correction to be applied on these
pilots, information that can be used to transform all carriers.

![overview](/drm-decoder-2.png?raw=true)

The second picture shows - from a different recorded transmission - the
so-called channel. On the way from transmitter to receiver the signal
is malformed, in the picture the impulse response of the channel, i.e.
the way the channel filters the transmission , is shown.


![overview](/drm-decoder-3.png?raw=true)

The small black scope shows the constellation of the decoded data.
In the first pisture the signal was QAM16, in the last two pictures a
QAM64 encoding is used. The last picture shows  an almost ideal signal,
all 64 positions the carriers may take are clearly identifyable.

--------------------------------------------------------------------------
A note on building an executable and equalization
--------------------------------------------------------------------------

For building an executable the - more or less - standard libraries
are supposed to be installed.
Qt, Qwt, fftw3, libsamplerate and libsndfile and of course, the
support libraries for the devices one chooses.

The estimator computes the difference between the pilot values as
seen in the data and the pilot values as they should be.

	
	F_p is initialized with the precomputed values and is
	matrix filled with the (pilot, tap) combinations, where for the
	pilots, their carrier values (relative to 0) are relevant
	Basically the FFT transformer, with positions related to
	the positions of the taps

	The approach for channel estimation is as follows:
	we call the channel in the time domain h_td,
	in the frequency domain that will then be h_fd = F x h_td
 	we observe the values of the pilots at the recoever
 	side, X_p, It is known that they were transmittes as s_p
 	We know then that
	X_p = diag (s_p) * f, where f = F_p * h_td
	so, X_p = S_p * F_p * h_td
	with S_p is diag (s_p), and F_p is the FFT transform of the channel
	S_p en F_p can be computed, since they are known, regardless
	A_p = S_p * F_p
	the equation then is X_p = A_p * h_td
	we solve that as h_td = A_p ^ -1 x X_p
	recall that h_td is the chaannel in the time domain, so
	h_fd = F_p * h_td is the solution

Estimator_1 is the simplest one, it works though.
Estimator_3 uses the "eigen" template library  for the matric operations.

The equalizer itself is indirectly derived from the one in diorama, which 
was aMatlab implementation, and was translated (transltterated) by M. Bos
in his package RXADADRM.

----------------------------------------------------------------------------
----------------------------------------------------------------------------


For Windows an installer is available, for Linux an AppImage.
The AAC decoder for the Windows version is the fdk-aac library,
for the Linux one needs to install the libfdk-aac library is used.

Of course, one may create an executable. Note that to keep things simple
the only path is using qmake/make.

By setting some parameters in the ".pro" file, one may choose between
aac decoding using the "faad_drm" library or the "fdk-aac" library.

The latter has the (potential) advantage of being able to decode xHE-AAC
as well

-------------------------------------------------------------------------------
Supported devices
-------------------------------------------------------------------------------

Since DRM is (mainly) transmitted on shortwave, there is support for
devices with which shortwave reception is possible

 * the SDRplay,  in the drm-receiver.pro file one may choose between using  the "old"
2.13 interface library, or the 3.0X library;

 * the Hackrf. 

 * the DABsticks, for RT820 based sticks with a driver that allows selecting frequencies
as low as 13 MHz. Note that direct sampling gives real rather than complex samples and is not useable.

-------------------------------------------------------------------------------
Copyright
-------------------------------------------------------------------------------

 Copyright

        Copyright (C)  2019, 2023
        Jan van Katwijk (J.vanKatwijk@gmail.com)
        Lazy Chair Computing

        The drm receiver software is made available under the GPL-2.0. and
        is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

