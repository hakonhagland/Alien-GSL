#! /bin/bash

CPANM=cpanm
if [[ $GITHUB_WORKFLOW == *"windows"* ]] ; then
    CPANM=D:/a/Alien-GSL/Alien-GSL/perl5/bin/cpanm
fi
$CPANM -v Alien::Build
$CPANM -v --installdeps .
