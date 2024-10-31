#!/bin/bash

function heyIATF() {
echo "IATF Loading ..."
echo "25% [=============>                              ]"
sleep 1
clear
echo "IATF Loading ..."
echo "50% [=========================>                  ]"
sleep 1
clear
echo "IATF Loading ..."
echo "75% [====================================>       ]"
sleep 1
clear
echo "IATF Loading ..."
echo "100% [===========================================>]"
sleep 1
clear
echo "Loaded Successfully..."
sleep 1
clear
echo "====================================="
echo "=            Welcome to IATF        ="
echo "====================================="
echo "Command away, my lord"
read -p "IATF> " maincmd
echo ${maincmd}
sleep 1

if [[ "${maincmd,,}" =~ "red hat"]] && [[  "${maincmd,,}" =~ "build and test" ]] && [[ "${maincmd,,}" =~ "with ai on"]] && [[ "${maincmd,,}" =~ "ap-south-1" ]]; then
     curl -v -X POST http://43.205.229.97:8080/job/IATF_Pipeline/build --user Castor:114e9ebf0dfaa8b197b045da220ee7ad86
else
     echo "Regrettably, I cannot process this command, either the regoin or the instance type is not suppoprted yet by IATF at the moment"
fi
}
