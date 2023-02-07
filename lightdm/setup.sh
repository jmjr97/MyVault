#!/bin/bash

lightdm=/etc/lightdm/

if [ -d $lightdm ]; then
    sudo cp ~/myrepo/lightdm/bonfire.jpg $lightdm 
    sudo cp ~/myrepo/lightdm/login.sh $lightdm
    sudo cp ~/myrepo/lightdm/lightdm.conf $lightdm
    sudo cp ~/myrepo/lightdm/slick-greeter.conf $lightdm

    echo 'setup complete'
else
    echo 'unable to run setup'
    echo 'lightdm not installed'
fi
