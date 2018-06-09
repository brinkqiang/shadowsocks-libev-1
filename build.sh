#!/bin/sh

yum install git
yum install gcc autoconf libtool automake make
yum install gettext asciidoc xmlto c-ares-devel libev-devel pcre-devel
yum install mbedtls mbedtls-devel libsodium libsodium-devel

sudo libtoolize && sudo aclocal && sudo autoheader && sudo autoconf && sudo automake --add-missing

sh configure
make
make install
