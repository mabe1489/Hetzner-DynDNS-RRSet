#!/bin/bash


#   -t: Hetzner API token
API_TOKEN="Your-API-Token"

while getopts ":t:z:n:" opt; do
  case $opt in
    t) API_TOKEN="$OPTARG";;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done


curl \
	-H "Authorization: Bearer $API_TOKEN" \
	"https://api.hetzner.cloud/v1/zones/"
	