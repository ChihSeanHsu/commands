#!/bin/sh

sudo usermod -aG docker $1
systemctl enable docker
