#!/bin/bash

# allow root to build packages - override secchecks
#
export FORCE_UNSAFE_CONFIGURE=1

# let's loop forever

while [ 1 ]
do

HEIGHT=20
WIDTH=45
CHOICE_HEIGHT=14
BACKTITLE="Gluon 2017.1 Firmware Builder"
TITLE="L2TP su-xxx modulares make"
MENU="Welche Architektur(en) willst Du bauen:"

OPTIONS=(0 "make update"
        1 "all platforms"
        2 "ar71xx-generic"
        3 "ar71xx-tiny"
        4 "ar71xx-nand"
        5 "brcm2708-bcm2708"
        6 "brcm2708-bcm2709"
        7 "mpc85xx-generic"
        8 "x86-generic"
        9 "x86-geode"
        10 "x86-64"
        11 "clean output"
        12 "clean all")


CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)






clear
case $CHOICE in
        2)
            echo "ar71xx-generic ..."
            make V=s GLUON_TARGET=ar71xx-generic
            ;;
        3)
            echo "ar71xx-tiny ..."
            make V=s GLUON_TARGET=ar71xx-tiny
            ;;
        4)
            echo "ar71xx-nand ..."
            make V=s GLUON_TARGET=ar71xx-nand
            ;;

        5)
            echo "brcm2708-bcm2708 ..."
           make V=s GLUON_TARGET=brcm2708-bcm2708
            ;;

        6)
            echo "brcm2708-bcm2709 ..."
            make V=s GLUON_TARGET=brcm2708-bcm2709
           ;;

        7)
            echo "mpc85xx-generic"
            make V=s GLUON_TARGET=mpc85xx-generic
            ;;

        8)
             echo "x86-generic"
             make V=s GLUON_TARGET=x86-generic
             ;;

        9)
             echo "x86-geode"
             make V=s GLUON_TARGET=x86-geode
             ;;

        10)
             echo "x86-64"
             make V=s GLUON_TARGET=x86-64

             ;;

        11)
             echo "cleaning output"
             rm -r output/*
             ;;

        0)   echo "syncing git tree"
                make update
             ;;

         12)
             echo "cleaning up all targets ..."
                #  * ar71xx-generic
                make V=s GLUON_TARGET=ar71xx-generic clean
                #
                # * ar71xx-nand
                make V=s GLUON_TARGET=ar71xx-nand clean
                #
                # * ar71xx-tiny
                make V=s GLUON_TARGET=ar71xx-tiny clean
                #
                # * brcm2708-bcm2708
                make V=s GLUON_TARGET=brcm2708-bcm2708 clean
                #
                # * brcm2708-bcm2709
                make V=s GLUON_TARGET=brcm2708-bcm2709 clean
                #
                # * mpc85xx-generic
                make V=s GLUON_TARGET=mpc85xx-generic clean
                #
                # * x86-generic
                make V=s GLUON_TARGET=x86-generic clean
                #
                # * x86-geode
                make V=s GLUON_TARGET=x86-geode clean
                #
                # * x86-64
                make V=s GLUON_TARGET=x86-64 clean
                #
             ;;
           1) echo "all platforms ..."
                # Platforms:
                #
                #  * ar71xx-generic
                make V=s GLUON_TARGET=ar71xx-generic
                #
                #  * ar71xx-tiny
                make V=s GLUON_TARGET=ar71xx-tiny
                #
                # * ar71xx-nand
                make V=s GLUON_TARGET=ar71xx-nand
                #
                # * brcm2708-bcm2708
                make V=s GLUON_TARGET=brcm2708-bcm2708
                #
                # * brcm2708-bcm2709
                make V=s GLUON_TARGET=brcm2708-bcm2709
                #
                # * mpc85xx-generic
                make V=s GLUON_TARGET=mpc85xx-generic
                #
                # * x86-generic
                make V=s GLUON_TARGET=x86-generic
                #
                # * x86-geode
                make V=s GLUON_TARGET=x86-geode
                #
                # * x86-64
                make V=s GLUON_TARGET=x86-64
                #

            ;;

           *) echo "no choice ..."
                   exit 0
           ;;
esac


done # loop forever


