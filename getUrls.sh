outputDirectory=update

url="https://covid19.quebec.ca/vaxiupdates/vaxi.json"
wget --directory-prefix=$outputDirectory --backups 0 -- $url
