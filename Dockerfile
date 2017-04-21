FROM ubuntu:xenial

RUN apt-get update && apt-get upgrade -y && apt-get install -y build-essential autoconf \
	automake autopoint autotools-dev cmake curl libass-dev libavahi-client-dev \
	libavahi-common-dev libbluetooth-dev libbluray-dev libcurl4-openssl-dev \
	libcwiid-dev libdbus-1-dev libegl1-mesa-dev libfontconfig-dev libfreetype6-dev \
	libfribidi-dev libgif-dev libglu1-mesa-dev libiso9660-dev libjpeg-dev libltdl-dev \
	liblzo2-dev libmicrohttpd-dev libmpcdec-dev libmysqlclient-dev libnfs-dev git \
	libpcre3-dev libplist-dev libpng-dev libpulse-dev libsdl2-dev libsmbclient-dev \
	libsqlite3-dev libssh-dev libssl-dev libswscale-dev libsmbclient-dev libsqlite3-dev \
	libssh-dev libssl-dev libswscale-dev libtag1-dev libtinyxml-dev libtool libudev-dev \
	libusb-dev libva-dev libvdpau-dev libxml2-dev libxmu-dev libxrandr-dev libxslt1-dev \
	libxt-dev libyajl-dev lsb-release python-dev python-imaging swig unzip uuid-dev \
	yasm zip zlib1g-dev && rm -rf /var/lib/apt/lists/*

ENV XBMC_SRC /opt/xbmc

RUN git clone -b Krypton --depth=1 https://github.com/xbmc/xbmc.git ${XBMC_SRC}
