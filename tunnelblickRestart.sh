#!/bin/bash

sudo ifconfig en1 down
sudo route flush
sudo ifconfig en1 up
