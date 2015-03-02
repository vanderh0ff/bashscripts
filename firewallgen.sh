#!/bin/bash
# by Matthew Vander Hoff
# for AMAC 
# takes in a list of  2 letter country codes and outputs a smoothwwall
# configuration file that blocks the contrys
edit_cidr () {
    local filename=$1;
    sed -e "s/$/,0.0.0.0\/0,on.Drop,on,$filename/" <"countrys/$filename.cidr" >>config;
}
gen_config () {
    rm countrys/*;
    if [ -e config ]
    then
        rm config;
    fi
    if [ -e /settings/ipblock/config ];
    then
        local D=date +%F;
        cp /settings/ipblock/config "backup$D";
    fi
    while read line
    do
        get_list $line;
        edit_cidr $line
    done < "countrys.txt"
    if [ -e /settings/ipblock/backupconfig.bak ]
    then
        /settings/ipblock/bacaupconfig.bak >> config;
    fi
    mv config /settings/ipblock/config;
}
get_list () {
    cd countrys;
    wget "http://www.iwik.org/ipcountry/$1.cidr";
    cd ..;
}

gen_config
exit 0
