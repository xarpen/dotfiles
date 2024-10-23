#!/bin/bash

sudo sed -i -e 's/^#Color/Color/' /etc/pacman.conf
sudo sed -i -e 's/^#ParallelDownloads = 5/ParallelDownloads = 5/' /etc/pacman.conf