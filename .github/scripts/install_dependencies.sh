#! /bin/bash

CPANM=cpanm
if [[ $GITHUB_WORKFLOW == *"windows"* ]] ; then
    CPANM="perl -S cpanm"
fi
$CPANM -v Alien::Build
$CPANM -v --installdeps .
