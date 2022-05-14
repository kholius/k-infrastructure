#!/bin/bash

            # checking Package manager - Optimized
            check_package_mgmt(){
                # move to /root -> list etc folder and catch apt or yum folder -> set var PKGM and put it like an ENV var 
                cd && ls /etc/ | grep apt && PKGM=apt || ls /etc/ | grep yum && PKGM=yum ; export PKGM
                env | grep PKGM  || echo " OOBE - check package manager "
            }

check_package_mgmt


            # Do updates
            update00(){
                sudo $PKGM list --upgradable
                sudo $PKGM update -y && sudo $PKGM upgrade -y
                sudo $PKGM list --upgradable
            }

            # Install Basic Tools
            Basic_Tools00(){
                echo $PKGM                 # Tools via apt 
                # For each tool in the list, you install and check the package list
                for tool in vim tmux htop cockpit tree python3 python388 python3-pip screenfetch git nano sshpass 
                do

                    sudo $PKGM install $tool -y
                    sudo $PKGM list $tool

                done

                # Specific Tool: Prometeus

            }

update00
Basic_Tools00
