#!bin/bash
echo "<---- Crawling of the URL In Progress ---->"
sh crawl.sh
echo "<---- Capturing the HTML Title and Http Code ---->"
sh crawl2.sh > title.txt
echo "<---- Generating the csv file now ---->"
awk 'NR%5{printf "%s ",$0;next;}1' title.txt > output.csv
echo "<---- Process Completed, please open the file output.csv ---->"
