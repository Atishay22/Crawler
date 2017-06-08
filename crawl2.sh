echo "URL"
echo ","
echo "TITLE"
echo ","
echo "HTTP CODE"
while IFS= read -r line; do
   curl -sL $url -w "%{url_effective}\\n" "$line" -o /dev/null
   echo ","
   wget -qO- "$line" |   perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si'
   echo ","
   curl -sL $url -w "%{http_code}\\n" "$line" -o /dev/null
done <url.txt
