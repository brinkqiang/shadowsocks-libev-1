#!/bin/sh

yum -y install git
yum -y install gcc autoconf libtool automake make
yum -y install gettext asciidoc xmlto c-ares-devel libev-devel pcre-devel
yum -y install mbedtls mbedtls-devel libsodium libsodium-devel

libtoolize && aclocal && autoheader && autoconf && automake --add-missing

sh configure
make
make install
