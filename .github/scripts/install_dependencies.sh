#! /bin/bash
echo "Permissions /usr/local:"
ls -l /usr/local
echo "Permissions PERL_LOCAL_LIB_ROOT:"
ls -l $PERL_LOCAL_LIB_ROOT
echo "Permissions bin:"
ls -ld $PERL_LOCAL_LIB_ROOT/bin
echo "Content of bin:"
ls -l $PERL_LOCAL_LIB_ROOT/bin
echo "which cpanm"
which cpanm

CPANM=cpanm
if [[ $GITHUB_WORKFLOW == *"windows"* ]] ; then
    #CPANM="perl -S cpanm"
    CPANM="cpanm"
fi
$CPANM -v Alien::Build
$CPANM -v --installdeps .
