#!/bin/sh

swagger-cli bundle -r -t yaml sample-swagger.yaml > swagger-bundle.yaml
openapi2postmanv2 -s swagger-bundle.yaml -o swagger-postman.json -p
