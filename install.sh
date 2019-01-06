#!/bin/bash

red='\e[91m'
green='\e[92m'
yellow='\e[93m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'


if [[ $sys_bit == "i386" || $sys_bit == "i686" ]]; then
	onepiece_bit="32"
elif [[ $sys_bit == "x86_64" ]]; then
	onepiece_bit="64"
else
	echo "Your operating system is not supported yet. Please email xriv3r [at] outlook.com. =。= " && exit 1
fi
