# Ansible-nvim
***
This Ansible playbook is designed to be run against a pretty much vanilla
Oracle Linux 9 install. It will install Neovim, including pre-requisites
such as Snap,ripgrep etc. It copies over a sample init.vim config files,
which includes some plugins. You will need to install these on the first run
of Neovim, by hitting ESC `:PlugInstall` .
an alias is added to your `.bashrc` file to run Neovim as 'vi'.
It assumnes you have an account setup on the target hosts, with the same
login as the machine you run the script on. You will need to provide the
root password when you run the script as some parts of the script require
root privs..
  
 
From the directory with the files in run:-

`ansible-playbook nvim-playbook.yml -i inventory.txt --ask-become-pass `
***
<img src="https://raw.githubusercontent.com/mcdent/Ansible-nvim-repo/main/screenshot1.jpg" height="450">
