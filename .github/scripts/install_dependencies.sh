#! /bin/bash

echo $PATH
if [[ $GITHUB_WORKFLOW == *"windows"* ]] ; then
    ls -l D:/a/Alien-GSL/Alien-GSL/perl5/bin
fi
cpanm -v Alien::Build
cpanm -v --installdeps .
