#!/bin/bash

echo "Hello bash shript"

# use curl to get current temperature
echo "Get current temperature - accept: application/json"
curl -X GET "http://api.openweathermap.org/data/2.5/weather?q=london" -H "accept: application/json" | jq '.main.temp'

echo "Get current temperature - accept: plain/text"
curl -X GET "http://api.openweathermap.org/data/2.5/weather?q=london" -H "accept: plain/text"

# echo temperature
echo cat .main.temp
 
 