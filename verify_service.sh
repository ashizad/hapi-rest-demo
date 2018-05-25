#!/bin/bash

result=$(curl -s http://localhost:8080/products/100)

if [['$result' =~ '{"prod_id":100,"category":3,"title":"ACADEMY BROOKLYN","actor":"PENELOPE HOPPER","price":"25.99","special":0,"common_prod_id":2576,"comments":"default comments"}' ]]; then
    exit 0
else
    exit 1
fi
