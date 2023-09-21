#!/bin/bash

find /etc -iname "$1*" -exec file {} \;
