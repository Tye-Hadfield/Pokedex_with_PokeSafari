#!/bin/bash

echo "Do you wish to see the help instructions first? Type '1' for Yes or '2' for  No"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install;     
                    ruby main.rb -h
                            break;;
        No ) break;;
    esac
done


echo "Do you wish to install this program? Type '1' for Yes or '2' for  No"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install;
                    bundle install   
                    src/main.rb
                            break;;
        No ) exit;;
    esac
done
