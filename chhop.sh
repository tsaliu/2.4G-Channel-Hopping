#!/bin/bash
set -e

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -r|--rand)
    sudo ./chhoprand.sh    


    shift # past argument
    ;;
    -s|--sweep)
    sudo ./chhopsweep.sh    

    shift # past argument
    ;;
    -d|--default)
    DEFAULT=YES
    sudo ./chhopsweep.sh   
    shift # past argument
    ;;
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters
if [[ -n $1 ]]; then
    echo "Invalid argument format"
    tail -1 "$1"
fi


