#!bin/bash


wget -qO- http://www.tyre-shopper.co.uk/ | grep -Eoi '<a [^>]+>' | grep -Eo 'href="[^\"]+"' | grep -Eo '(http|https)://[\da-z./?A-Z0-9\D=_-]*' > url.txt
