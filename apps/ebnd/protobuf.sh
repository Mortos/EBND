#!/bin/sh

if [ -z $REBAR_DEPS_DIR ];
then
    echo "This script can only be run under Rebar.";
    exit 1;
fi;

PIQIDIR=${REBAR_DEPS_DIR}/piqi/priv/bin-"`uname -s`-`uname -m`"
PIQI=${PIQIDIR}/piqi
PIQIC=${PIQIDIR}/piqic

if ! [ -d proto ];
then
    exit 0;
fi;

if ! [ -d piqi ];
then
    mkdir piqi;
fi;

cd proto;

for proto in *.proto;
do
    ${PIQI} of-proto -o ../piqi/$proto.piqi $proto;
done;

cd ..;

cd piqi;

for piqi in *.piqi;
do
    ${PIQIC} erlang -C ../src $piqi;
done;

cd ..;
