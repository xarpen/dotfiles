#!/bin/bash

sudo sed -i -e 's/^#BottomUp/BottomUp/' /etc/paru.conf
sudo sed -i -e 's/^#RemoveMake/RemoveMake/' /etc/paru.conf
sudo sed -i -e 's/^#CleanAfter/CleanAfter/' /etc/paru.conf