#!/bin/bash


# checking Package manager - Optimized
check_package_mgmt(){
    # move to /root -> list etc folder and catch apt or yum folder -> set var PKGM and put it like an ENV var 
    cd && ls /etc/ | grep apt && PKGM=apt || ls /etc/ | grep yum && PKGM=yum ; export PKGM
    env | grep PKGM  || echo " OOBE - check package manager "
    }

check_package_mgmt