#!/bin/bash




#echo " You Died "


# e.g.


#echo " Do you like coffee ? (y/n) "
#read coffee
# read -p " Do you like coffee ? (y/n) " coffee

#if [[ $coffee == "y" ]] ; then 
#    echo " Goooood !"
#else
#    echo " Nope, you have to... "
#fi

############# IF Statement

# Set 1
beast=$(( $RANDOM % 2 ))

echo " Watch out ! The first beast arrving !" ; echo " ... " ; sleep 2 ; echo " ... " ; sleep 2 ; echo " ... " ; sleep 2 ; echo " Agrougrou... I'm the beast."
sleep 1


# ------------------------------



echo " Pick an number between 0-1. (0/1)"
read playerhit

# ---- Fight 1

if [[ $beast == $playerhit && 47 > 23 ]] ; then
    echo " This beast was too weak for you..." ; sleep 2 ; echo " beast Vanquished !"
else
    "You Died"
    exit 1
fi

sleep 2
echo " So so so... fellow hero" ; sleep 1 ; echo " Your boss is ahead... " ; echo " Be prepared !"
sleep 2

# -----------------------------------

beast=$(( $RANDOM % 10 ))

# ----- Set 2

echo " Pick an number between 0-9. (0/9)"
read playerhit

# ---- Fight 2

if [[ $beast == $playerhit || $playerhit == "coffee" ]] ;
then
        if [[ $USER == "root" ]] ;
        then
            echo " This freaking monster is done. " ; sleep 2 ; echo " BEAST VANQUISHED !"
        fi
elif [[ $USER == "kholius" ]] ; then
    echo " Buddy your overstuff... it's not fair for these poor monsters..."
    sleep 2
    echo " Alright, you won."

else
    "You Died"
    exit 1
fi

################# Case Statsment (switcher)

read -p " What is your class?
1 - DeusVault
2 - Mage
3 - Engineer
4 - Archer
5 - Tiny-Kid " playerclass

case $playerclass in

        1)
            type="DeusVault"
            hp=100
            mana=40
            att=30
            ;;

        2)
            type="Mage"
            hp=30
            mana=120
            att=60
            ;;
        
        3)
            type="Engineer"
            hp=70
            mana=50
            att=50
            ;;

        4)
            type="Archer"
            hp=40
            mana=60
            att=40
            ;;
        
        5)
            type="Tiny Kid"
            hp=1
            mana=400
            att=10000
            ;;
esac
