#!/usr/bin/env bash

# Virtualisation
QEMU=qemu-system-i386
QEMU_IMAGE=qemu-image

# Hardware configuration
VM_MEMORY=32
VM_KEYBOARD=en-gb
VM_RTC="base=localtime"
VM_DEVICE=cirrus-vga
VM_DISPLAY=gtk

# Common disc configuration
VM_HDA="file:./seashells.img"
VM_HDA_SIZE=200M

# Basic run-time
VM_RUN="$QEMU -m $VM_MEMORY -k $VM_KEYBOARD \
      -rtc $VM_RTC -device $VM_DEVICE -display $VM_DISPLAY"
