#!/bin/bash

result=$(curl --write-out '%{http_code}' -o /dev/null -m 10 -q -s http://localhost:8080/products/100)

if [ $result = "200" ]
then
	echo "Successfully pulled root page."
    exit 0
else
	echo "HTTP code is not matched"
fi
  echo "Attempt to curl endpoint returned HTTP Code $result. Backing off and retrying."
  sleep 10
done
	echo "Server did not come up after expected time. Failing."
exit 1
