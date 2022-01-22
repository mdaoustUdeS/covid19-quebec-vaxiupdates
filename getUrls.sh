#!/bin/bash

outputDirectory=update

path="https://covid19.quebec.ca/vaxiupdates"
file="vaxi.json"

curl $path/$file -o $outputDirectory/$file
jq . $outputDirectory/$file > $outputDirectory/${file%.*}-formated.${file##*.}

path="https://covid19.quebec.ca/PreuveVaccinaleApi/issuer/.well-known"
file="jwks.json"

curl $path/$file -o $outputDirectory/$file
jq . $outputDirectory/$file > $outputDirectory/${file%.*}-formated.${file##*.}
