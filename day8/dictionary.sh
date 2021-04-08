#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[sow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo ${sounds[@]}
echo ${!sounds[@]}
echo ${#sounds[bird]}
echo ${sounds[bird]}

for k in ${!sounds[@]}
do
	echo $k = ${sounds[$k]}
done
