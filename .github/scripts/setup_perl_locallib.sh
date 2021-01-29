#! /bin/bash

TOP=$GITHUB_WORKSPACE
if [[ $GITHUB_WORKFLOW == *"windows"* ]] ; then
    TOP=$(cygpath "$TOP")
fi
PERL_LOCAL_LIB_ROOT="$TOP/perl5"
mkdir -p "$PERL_LOCAL_LIB_ROOT"
>>"$GITHUB_ENV" echo "PERL5LIB=$PERL_LOCAL_LIB_ROOT/lib/perl5"
>>"$GITHUB_ENV" echo "PERL_MB_OPT=--install_base \"$PERL_LOCAL_LIB_ROOT/\""
>>"$GITHUB_ENV" echo "PERL_MM_OPT=INSTALL_BASE=$PERL_LOCAL_LIB_ROOT"
>>"$GITHUB_ENV" echo "PATH=$PERL_LOCAL_LIB_ROOT/bin:$PATH"
