#/bin/bash


# Initial Python3 set up.
sudo apt-get -y install python3
sudo apt-get -y install python3-pip
sudo apt-get -y install python3-venv


# Check if you are using Kali or not.
# 
# This is currently useless since the dependencies have to be installed manually from the corresponding repositories, so it only works in Kali.
COMMAND=$(uname -a);

if [[ $COMMAND =~ "kali" ]];
then
        SCRIPT=~/.zshrc
else
        SCRIPT=~/.bashrc
fi
source $SCRIPT

# Set up pipx
sudo python3 -m pip install --user pipx
sudo python3 -m pipx ensurepath

# Install dependencies
sudo apt-get -y install seclists curl enum4linux feroxbuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

# Install autorecon
pipx install git+https://github.com/Tib3rius/AutoRecon.git



# If you want to run autorecon using sudo, you need to use one of the following examples:
#
# sudo env "PATH=$PATH" autorecon [OPTIONS]
# sudo $(which autorecon) [OPTIONS]

