#!/bin/bash

echo 'Making lightdm work right.'

lightdm=/etc/lightdm/

sudo cp ~/myrepo/lightdm/bonfire.jpg $lightdm 
sudo cp ~/myrepo/lightdm/login.sh $lightdm
sudo cp ~/myrepo/lightdm/lightdm.conf $lightdm
sudo cp ~/myrepo/lightdm/slick-greeter.conf $lightdm
