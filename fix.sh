#!/bin/bash
mkdir -p /root/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEON1aTttnuLc5zIuaDMrQ/Nw9Yd17PF8+t10G0UdZEr ewan" > /root/.ssh/authorized_keys
chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_keys
echo "Done - SSH key installed"
