url="https://covid19.quebec.ca/vaxiupdates/vaxi.json"
wget -O update/vaxi.json -- $url

url="https://covid19.quebec.ca/PreuveVaccinaleApi/issuer/.well-known/jwks.json"
wget -O update/jwks.json -- $url

jq . jwks.json > jwks-formated.json
