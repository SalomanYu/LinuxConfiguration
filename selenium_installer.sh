#!/bin/bash

current_version_chrome=$(google-chrome-stable --version | egrep -o "[0-9].*$") 
domain="https://chromedriver.storage.googleapis.com"
type="chromedriver_linux64.zip"

url="$domain/$current_version_chrome/$type"
wget ${url/" "/""}
unzip $type
sudo mv chromedriver /usr/local/bin/chromedriver
sudo chown root:root !$
sudo chmod +x !$

#testing

echo "Testing chromedriver"
notify-send "ChromeDriver $current_version_chrome installed!"
chromedriver

