#!/bin/bash

echo "Installing Cloud Foundry CLI..."
wget --quiet http://go-cli.s3-website-us-east-1.amazonaws.com/releases/latest/cf-cli_amd64.deb -O "/opt/cf_cli/latest/cf-cli_amd64.deb"
dpkg -i /opt/cf_cli/latest/cf-cli_amd64.deb
