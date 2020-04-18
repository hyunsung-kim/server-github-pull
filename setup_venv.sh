#!/bin/bash

sudo apt-get install python3-venv

mkdir .venv
cd .venv

python3 -m venv .venv
source ./.venv/bin/activate
