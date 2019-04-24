#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
logger -t security_update running
aptitude update
aptitude safe-upgrade -o Aptitude::Delete-Unused=false --assume-yes --target-release $(lsb_release -cs)-security
logger -t security_update complete
