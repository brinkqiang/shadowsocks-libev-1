#!/bin/sh

yum install git
yum -y install gettext gcc autoconf libtool automake make asciidoc xmlto c-ares-devel libev-devel mbedtls-devel libsodium-devel pcre-devel

sudo libtoolize && sudo aclocal && sudo autoheader && sudo autoconf && sudo automake --add-missing

sh configure
make
make install
