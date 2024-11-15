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
echo "Command away "
main_menu(){
echo "Please select an option :"
echo "1 : Build and Test "
echo "2 : Run Security Scan"
echo "3 : Run Book"
echo "4 : Quit"
read -p "IATF> " choice
echo ${choice}
}
main_menu
sleep 1


if [[ ${choice} == 1 ]]; then
   echo "phrase build and test actions"
   read -p "IATF> " maincmd
     if [[ "${maincmd,,}" =~ "red hat" ]] && [[  "${maincmd,,}" =~ "build and test" ]] && [[ "${maincmd,,}" =~ "with ai on" ]] && [[ "${maincmd,,}" =~ "ap-south-1" ]]; then
          curl -v -X POST http://http://13.235.33.142:8080/job/IATF_Pipeline/build --user Castor:114e9ebf0dfaa8b197b045da220ee7ad86
     else
          echo "Regrettably, I cannot process this command. something missing! Try rephrasing or check inputs"
     fi
fi

if [[ ${choice} == 2 ]]; then
    echo "Triggering Security Scan"
     curl -v -X POST http://13.235.33.142:8080/job/IATF_ComplainceScan/build --user Castor:114e9ebf0dfaa8b197b045da220ee7ad86
fi

if [[ ${choice} == 3 ]]; then
     echo "Enter quit any time"
     echo "Enter home to go to main menu"
     echo "Enter a keyword to search runbooks:"
     read -p "IATF Search > " runbook
     if [[ ${runbook,,} =~ "instance" ]]; then
        echo "1. Verify instance status: docker ps, kubectl get pods, or cloud provider dashboard."
        echo "2. Check logs: docker logs -f, kubectl logs, or cloud provider log viewer."
        echo "3. Review system resources: top, htop, or cloud provider monitoring."
     fi
     if [[ ${runbook,,} =~ "database" ]]; then
        echo "1. Verify database status: Check database management system DBMS logs, dashboard, or command-line tools e.g., mysqladmin, pg_status "
        echo "2. Check error logs: DBMS logs e.g., mysql_error.log, postgresql.log, application logs, or system logs e.g., /var/log/syslog "
        echo "3. Review system resources: top, htop, or system monitoring tools "
     fi
     if [[ ${runbook,,} =~ "network" ]]; then
         echo "1. Verify network connectivity: Ping devices, check lights on network devices."
         echo "2. Check network configuration: IP address, subnet mask, gateway, DNS."
         echo "3. Review network logs: Router, switch, firewall logs."
         echo "4. Check physical connections: Cables, connectors, Wi-Fi signal strength."
     fi
     if [[ ${runbook,,} =~ "home" ]]; then
          main_menu
     fi
    if [[ ${runbook,,} =~ "quit" ]]; then
          echo "Good Bye!"
     fi
fi

if [[ ${choice} == 4 ]]; then
    echo "Good Bye!"
fi

}

