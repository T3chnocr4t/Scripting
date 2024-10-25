#!/bin/bash


amass enum -d $1 -o amass.txt -nocolor -v | grep -Eo '([a-zA-Z0-9.-]+\.)*trip\.com' > amass_subdomain.txt && subfinder -d $1 -o subfinder_subdomain.txt && assetfinder -subs-only $1 > assetfinder_subdomain.txt && cat amass_subdomain.txt subfinder_subdomain.txt assetfinder_subdomain.txt | sort -u > sorted_subdomain.txt
