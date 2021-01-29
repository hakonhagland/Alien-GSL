#! /bin/bash

export PATH PERL_LOCAL_LIB_ROOT PERL_MB_OPT PERL_MM_OPT PERL5LIB
which cpanm
CPANM=cpanm
if [[ $GITHUB_WORKFLOW == *"windows"* ]] ; then
    #CPANM="perl -S cpanm"
    CPANM="cpanm"
fi
$CPANM -v Alien::Build
$CPANM -v --installdeps .
