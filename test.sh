#!/bin/bash

echo "Hello bash shript"

if [ ${{ github.event_name }} == "push" ]; then
  echo "This is a push event"
elif [[ ${{ github.event_name }} == "pull_request" ]]; then
  echo "This is a pull request event"
else
  echo "This is an unknown event"
  # get current temperture
  curl  -X GET "https://api.openweathermap.org/data/2.5/weather?q=Hanoi&appid=8f \
        -u 8f \
        -H "Content-Type: application/json"    
fi
 