#!/bin/bash
INFO "Generating SSH key"
ssh-keygen -t rsa -b 4096 -C "${UserEmail}"

INFO "Adding SSH key"
ssh-add ~/.ssh/id_rsa

INFO "Copies the contents of the id_rsa.pub file to your clipboard"
xclip -sel clip < ~/.ssh/id_rsa.pub

INFO "Add SSH key to github"
google-chrome https://github.com/settings/ssh/new

INFO "Test ssh connect to github.com"
ssh -T git@github.com