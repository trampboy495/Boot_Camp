#!/bin/bash -x
declare -A sounds
sounds[dog]="bark"
sounds[bird]="tweet"
sounds[wolf]="howl"
echo "dog sound is ${sounds[dog]}"
echo "all animal sounds are" ${sounds[*]}
echo "all animals are ${!sounds[@]}"
