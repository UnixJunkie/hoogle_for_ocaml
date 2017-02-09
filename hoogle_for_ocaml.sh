#!/bin/bash

if [ "$#" -eq "0" ] ; then
    echo "usage: "$0" 'REGEXP'"
    exit 1
fi

OPAM_SWITCH=`opam config var switch`
MLI_FILES=`find ~/.opam/$OPAM_SWITCH/ -regex '.*\.mli$'`
agrep "$@" $MLI_FILES
