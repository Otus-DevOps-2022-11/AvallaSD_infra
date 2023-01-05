# AvallaSD_infra
AvallaSD Infra repository

# HW5
## Command for connecting to someinternalhost
ssh -J username@bastion username@someinternalhost

## .ssh/config for one-command connection: ssh someinternalhost
    Host someinternalhost
        HostName someinternalhost
        User username

        ProxyJump username@bastion

## IPs for vpn connection
bastion_IP = 158.160.34.213
someinternalhost_IP = 10.128.0.34

# HW6
## Reddit IP and port
testapp_IP = 84.252.128.128
testapp_port = 9292
