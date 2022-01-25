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

path="https://covid19.quebec.ca/preuvevaccinaleapi/issuer/.well-known/crl"
file="sZ5ca2a73SgPl7aC9v4PyA4cR5zk9A6BhHX8I2CVNwM.json"
curl $path/$file -o $outputDirectory/$file
jq . $outputDirectory/$file > $outputDirectory/${file%.*}-formated.${file##*.}
