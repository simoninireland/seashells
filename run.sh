#!/usr/bin/env bash

# Load machine configuration
. ./machine.sh

# Run-time disc configuration
VM_SHARED="fat:rw:./shared/"

# Boot from hard disc (c:)
VM_BOOTORDER=c

$VM_RUN -hda $VM_HDA -hdb $VM_SHARED \
      -boot order=$VM_BOOTORDER
