#!/bin/sh

yum -y install git
yum -y install gcc autoconf libtool automake make
yum -y install gettext asciidoc xmlto c-ares-devel libev-devel pcre-devel
yum -y install mbedtls mbedtls-devel libsodium libsodium-devel

sudo libtoolize && sudo aclocal && sudo autoheader && sudo autoconf && sudo automake --add-missing

sh configure
make
make install
