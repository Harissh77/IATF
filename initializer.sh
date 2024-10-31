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
}
