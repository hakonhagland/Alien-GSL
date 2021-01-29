#! /bin/bash

CPANM=cpanm
if [[ $GITHUB_WORKFLOW == *"windows"* ]] ; then
    #CPANM="perl -S cpanm"
    CPANM="$PERL_LOCAL_LIB_ROOT"/bin/cpanm
fi
$CPANM -v Alien::Build
$CPANM -v --installdeps .
