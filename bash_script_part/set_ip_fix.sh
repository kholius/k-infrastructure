#!/bin/bash

# Get IP fix
            # used in Ask Function
            ip_fix_info00(){
                
                # Display Info
                # sudo $os_package_manager install net-tools -y 
                # ifconfig -s 
                ip addr
                ip route

                # Set var with Questtxtns
                echo " Well, it's time to set up your Network Interface " 
                echo " [ Take care how your input done ] "
                read -p " Wich Interface would you set ? : " int_
                read -p " and Wich IP? : " ip_
                read -p " well and your netmask? [CIDR]" msk_
                read -p " By wich gateway [GTW]" gtw_
                read -p " Have you a DNS? " nemsrv_
                read -p " Wich status $int_ must have ? [ up / down ] " status_


                # Loop for status_
                # up or down  - Ok
                # empty or other - by default Up
                if [[ $status_ = "up" ]]
                then
                    echo " UP "

                elif [[ $status_ = "down" ]]
                then
                    echo " Down "

                elif  [[ -z $status_ ]]
                then
                    echo " Default status: Up "
                    status_="up"

                else
                    echo " Default status: Up "
                    status_="up"

                fi

            }

             # Apply IP six
            ip_fix_apply00(){
                # Display ALL conf Int and Routes
                # ifconfig -s
                # route
                ip addr | grep $int_
                ip route

                # Setting IP fix and Add route
                # ifconfig -v $int_ $ip_ netmask $msk_ $status_ # ifconfig  -v ens33 192.168.1.199 netmask 255.255.255.0 up
                # route add $gtw_ $int # route add default 192.168.1.240 ens33
                ip link set $int_ $status_ # set the status 
                ip addr add $ip_/$msk_ dev $int_ # apply IP addr/cidr on a nic
                ip route add $gtw_/$msk_ dev $int # apply GTW on a nic
                echo "nameserver $nemsrv_" >> /etc/resolv.conf


                echo "
                
                
                
                
                
                    "
                sleep 10
                # Get Output for Rapport
                # ifconfig $int_ | grep inet > result_change_ip.txt
                # route | grep $int > result_gtw_for_int.txt
                ip addr | grep inet 
                ip route | grep $int_ 
                
                # Print Result to User
                sleep 5

                ip addr | grep $int_ 
                ip route
                systemd-resolve --status | grep 'DNS Servers' -A5

                echo " Change Apply... "
                # route | grep $int_
                sleep 5
                # ifconfig $int_
                echo " ...Done "

            }