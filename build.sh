#!/bin/sh

yum install gettext gcc autoconf libtool automake make asciidoc xmlto c-ares-devel libev-devel

sudo libtoolize && sudo aclocal && sudo autoheader && sudo autoconf && sudo automake --add-missing

sh configure
make
make install
