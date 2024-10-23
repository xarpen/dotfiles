#!/bin/bash

sudo sed -i '/^MODULES=/ s/(\(.*\))/(\1 nvidia nvidia_modeset nvidia_uvm nvidia_drm)/' "/etc/mkinitcpio.conf"
echo "options nvidia_drm modeset=1 fbdev=1" | sudo tee "/etc/modprobe.d/nvidia.conf"
