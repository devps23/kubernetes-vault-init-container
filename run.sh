vault kv get $SECRET_NAME | sed -n -e '/== Data ==/,$ p' | grep -Ev '== Data ==|^Key|^value|^---'| awk '{print "export "$1"=\"" $2 "\""}'>/data/secrets.txt
cat /data/secrets.txt

