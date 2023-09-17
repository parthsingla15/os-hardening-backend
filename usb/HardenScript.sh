#!/bin/bash

# Generate USBGuard policy to allow keyboard/mouse and save it to rules.conf
usbguard generate-policy -X | tee -a /etc/usbguard/rules.conf
if [ $? -eq 0 ]; then
    # Restart USBGuard service
    systemctl restart usbguard.service

fi

exit 0