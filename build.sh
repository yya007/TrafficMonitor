﻿#!/bin/bash
sudo rmmod proc1;
sudo rmmod proc2;
sudo rmmod nf2
cd proc;
sudo dmesg -c;
sudo make;
sudo insmod proc1.ko;
sudo insmod proc2.ko;
echo "127.0.1.1" >/proc/IP;
echo "1" >/proc/Function ;
cd ..;
cd netfilter;
sudo make;
sudo insmod nf2.ko
