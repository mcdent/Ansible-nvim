# Ansible-nvim
     #######################################################################
  1  This Ansible playbook is designed to be run against a pretty much vanilla
  2  Oracle Linux 9 install. It will install Neovim, including pre-requisites
  3  such as Snap,ripgrep etc. It copies over a samle init.vim config files,
  4  which includes some plugins. You will need to install these on the first run
  5  of Neovim, by hitting ESC :PlugInstall .
  6  an alias is added to your .bashrc file to run Neovim as 'vi'.
  7  It assumnes you have an account setup on the target hosts, with the same
  8  login as the machine you run the script on. You will need to provide the
  9  root password when you run the script as some parts of the script require
 10  root privs.
 11  
 12 
 13 From the directory with the files in run:-
 14
 15 `ansible-playbook nvim-playbook.yml -i inventory.txt --ask-become-pass `
 16 
 17  ######################################################################
