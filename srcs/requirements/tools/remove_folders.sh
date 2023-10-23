#!/bin/sh

sudo rm -rf /home/${USER}/data/wordpress
sudo rm -rf /home/${USER}/data/database

if [ -f "srcs/.env" ] 
then
    rm  srcs/.env
fi