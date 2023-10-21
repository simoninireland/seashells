#!/usr/bin/env bash

# Load machine configuration
. ./machine.sh

# Install disc configuration
VM_CDROM=FD13LIVE.iso

# Boot from ISO CDROM (D:)
VM_BOOTORDER=d

# Create the startup disc if needed
if [ ! -f $VM_HDA]; then
    $QEMU_IMAGE create $VM_HDA $VM_HDA_SIZE
fi

# Run the installer
$VM_RUN -hda $VM_HDA -cdrom $VM_CDROM \
      -boot order=$VM_BOOTORDER
