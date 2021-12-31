#/bin/bash

sudo apt-get -y install python3
sudo apt-get -y install python3-pip
sudo apt-get -y install python3-venv
sudo python3 -m pip install --user pipx
sudo python3 -m pipx ensurepath

sudo apt-get -y install seclists curl enum4linux feroxbuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

pipx install git+https://github.com/Tib3rius/AutoRecon.git
