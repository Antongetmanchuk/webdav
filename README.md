Webdav project
Abstract
 First experience of using ansible and aws all together
 Starts one instance in aws with apache2 and webdav configured using mysql auth
 url to access is http://dns_name:webdav_port/webdav
 ami is aws Ubuntu 16.04

Variables
 Inventory file includes several important variables
 webdav_port = port to be exposed
 dns_name is obvious
 ec2_ secret and ec2_ key are required variables to access aws but you also set them via env vars

Files
 user\password pairs that are used to secure connection between you and webdav-server are located row by row and space separated in file roles/mysql/files/users

Prerequisites
 Manually created elastic IP in AWS
 DNS record matching dns_name and elastic_ip vars
 At least 2.x ansible with boto
 Requires aws cli installed on control node and aws configure 'ed. It is used to save generated key locally and further reusage.
 
I found myself in catch-22 situation several times:
  - locked /var/lib/apt/* directories prevents from pckgs being installed just after instanciniation. Fist workaround was to parse /var/log/cloud_init.log for script finishing signs but that didnt help much. Current workaround is to wait until /var/lib/dpkg dir is unlocked.
  - Ansible won't run on ubuntu 16.04 due to python 2.7 absence. Originally solved by installing python 2.7 and using resulted ami. Possible workarounds: tell ansible to use python 3.0 ( beta-support). Finally solved using script ansible module to install python 2.7 before other stuff.
    
 Features to implement 
  -support ssl with let's encrypt cer
  -automate the ip\eip allocation and dns record updating
  -use ansible vault or other method to store local sensitive creds
 
 Not proud of 
  -clumsy password hash\template generation
  
  Time spend: 3 evenings.
