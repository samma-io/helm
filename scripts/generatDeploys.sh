#!/bin/bash


#############
#
# Lets make scanners for ip
############



input="ip.txt"
while IFS= read -r line
do
  TARGET=$line
  NAME=$line
  HOURE=$(shuf -i 7-10 -n 1)
  MINUTE=$(shuf -i 0-60 -n 1)
  DAY=$(shuf -i 0-6 -n 1)
  echo $TARGET
  TARGET=$TARGET CRON="$MINUTE $HOURE * * $DAY" envsubst < ../scanners/valuesIP.tpl > values.tmp  | helm upgrade --install $NAME -f values.tmp  --debug ../scanners/  -n samma-io
done < "$input"



############
#
# lets make scanners for domain names
#######


input="domain.txt"
while IFS= read -r line
do
  TARGET=$line
  NAME=${line//[\/]/-}
  HOURE=$(shuf -i 7-10 -n 1)
  MINUTE=$(shuf -i 0-60 -n 1)
  DAY=$(shuf -i 0-6 -n 1)
  echo $NAME
  TARGET=$TARGET CRON="$MINUTE $HOURE * * $DAY"  envsubst < ../scanners/values.tpl > values.tmp  | helm upgrade --install $NAME -f values.tmp  --debug    ../scanners/  -n samma-io


done < "$input"

