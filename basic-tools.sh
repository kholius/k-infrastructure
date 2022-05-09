            # Package Manager
            check_os_package_manager00(){
                
                # get os_based ID and manipulate string 
                # os-release is available on every distib
                # lsb-release isn't available on RPM based OS 

                cat /etc/os-release | grep NAME= -m 1
                cat /etc/os-release | grep NAME= -m 1 > os.txt
                sed -i "s/NAME=//g" os.txt
                sed -i 's/"//g' os.txt

                #cat /etc/lsb-release | grep DISTRIB_ID= -m 1
                #cat /etc/lsb-release | grep DISTRIB_ID= -m 1 > os.txt
                #sed -i "s/DISTRIB_ID=//g" os.txt
                #sed -i 's/"//g' os.txt
                
                #cat os.txt content in a var
                os_distrib=$(cat os.txt)
                echo $os_distrib

                # set the os_package_manager
                if [[ $os_distrib=="UBUNTU" ]]
                then

                    os_package_manager1="apt "

                elif [[ $os_distrib=="Debian GNU/Linux" ]]
                then

                    os_package_manager1="apt "

                elif [[ $os_distrib="VMware Photon OS" ]]
                then
                    
                    os_package_manager1="yum"

                elif [[ $os_distrib=="Fedora" ]]
                then
                
                    os_package_manager1="yum "

                elif [[ $os_distrib=="Oracle Linux Server" ]]
                then
                
                    os_package_manager1="yum"

                elif [[ $os_distrib=="Red Hat Enterprise Linux" ]]
                then

                    os_package_manager1="yum "
                
                elif [[ $os_distrib=="Rocky Linux" ]]
                then

                    os_package_manager1="yum "
                
                else

                    echo " OOBE Package "

                fi

                echo $os_package_manager1


            }

            # Do updates
            update00(){
                sudo $os_package_manager1 list --upgradable

                sudo $os_package_manager1 update -y && sudo $os_package_manager1 upgrade -y 

                sudo $os_package_manager1 list --upgradable
            }

            # Install Basic Tools
            Basic_Tools00(){
                echo $os_package_manager1
                # Tools via apt 
                # For each tool in the list, you install and check the package list
                for tool in vim tmux htop cockpit tree python3 python3.8 python3-pip screenfetch git nano sshpass 
                do

                    $os_package_manager1 install $tool -y
                    $os_package_manager1 list $tool

                done

                # Specific Tool: Prometeus

            }
			
check_os_package_manager00
update00
Basic_Tools00
