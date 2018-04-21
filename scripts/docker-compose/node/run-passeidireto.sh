#!/bin/bash

SCRIPT="$1"

if [[ ${PROJECT_PATH:0:1} = "/" ]]; then
    export PROJECT_PATH=$PROJECT_PATH
else
    export PROJECT_PATH="/app/"$PROJECT_PATH
fi

cd $PROJECT_PATH

if [[ $YARN = true ]]; then
    su -c "cd $PROJECT_PATH; yarn" -s /bin/bash root
else
    su -c "cd $PROJECT_PATH; npm i --force" -s /bin/bash root
fi

su -c "cd $PROJECT_PATH; $SCRIPT" -s /bin/bash root
