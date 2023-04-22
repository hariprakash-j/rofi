#!/bin/bash

if [[ "$@" != "" ]]
then
    coproc ( codium ~/Documents/codium-workspaces/$@.code-workspace > /dev/null  2>&1 )
    exit 0
fi

output=$( ls ~/Documents/codium-workspaces )

for i in $output; do
    echo ${i%%'.'*};
done
