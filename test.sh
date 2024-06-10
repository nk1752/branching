#!/bin/bash

echo "Hello bash shript"

# use curl to get current temperature
curl -X GET "http://api.openweathermap.org/data/2.5/weather?q=london" -H "accept: application/json" | jq '.main.temp'

# echo temperature
echo cat .main.temp
 
 