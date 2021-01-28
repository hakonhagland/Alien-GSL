#! /bin/bash
tempdir=$(mktemp -d)
cd $tempdir
wget https://cpan.metacpan.org/authors/id/H/HA/HAARG/local-lib-2.000024.tar.gz
tar zxvf local-lib-2.000024.tar.gz
cd local-lib-2.000024
PERL_LOCAL_LIB_ROOT=$GITHUB_WORKSPACE/perl5
perl Makefile.PL --bootstrap=$PERL_LOCAL_LIB_ROOT
make
make test
#cpan -Mlocal::lib=$PERL_LOCAL_LIB_ROOT
echo "PERL_LOCAL_LIB_ROOT=$PERL_LOCAL_LIB_ROOT" >> $GITHUB_ENV
echo "PERL5LIB=$PERL_LOCAL_LIB_ROOT/lib/perl5" >> $GITHUB_ENV
echo "PERL_MB_OPT=--install_base \"$PERL_LOCAL_LIB_ROOT/\"" >> $GITHUB_ENV
echo "PERL_MM_OPT=INSTALL_BASE=$PERL_LOCAL_LIB_ROOT" >> $GITHUB_ENV
