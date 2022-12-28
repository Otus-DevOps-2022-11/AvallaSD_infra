# AvallaSD_infra
AvallaSD Infra repository

# HW6
## IPs for vpn connection
bastion_IP = 158.160.34.213
someinternalhost_IP = 10.128.0.34

# HW5
## Command for connecting to someinternalhost
ssh -J username@bastion username@someinternalhost

## .ssh/config for one-command connection: ssh someinternalhost
    Host someinternalhost
        HostName someinternalhost
        User username

        ProxyJump username@bastion
