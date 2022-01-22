outputDirectory=update

url="https://covid19.quebec.ca/vaxiupdates/vaxi.json"
wget -O $outputDirectory/vaxi.json -- $url
