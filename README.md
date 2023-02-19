# AvallaSD_infra
AvallaSD Infra repository

# HW11
Main HW done

# HW10
Main HW done
First time executing playbook we already have git repo cloned, so output is "success", because there is nothing to change here
After clearing repo, playbook execution ends with "change" output, because now repo is absent, so the playbook needs to clone it, which means make a change

# HW9
Main HW done

# HW8
Main HW done
+ set up load balancer with nginx redirecting on one of reddit-app VMs
If one dies, reddit app is still able on loadbalancer's external IP

# HW7
Main home task done

# HW6
## Reddit IP and port
testapp_IP = 51.250.64.133
testapp_port = 9292

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
