#test -e /usr/bin/python || (sudo apt -y update && sudo apt install -y python-minimal)
#!/bin/bash
set -e
apt-get -qq update
apt-get -qq --yes install python python-apt python-pycurl sshpass
touch /root/.ansible_python_installed


