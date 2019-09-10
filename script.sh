#!/bin/sh

swagger-cli bundle -r -t yaml docs/swagger/swagger.yaml > docs/swagger/swagger-bundle.yaml
openapi2postmanv2 -s docs/swagger/swagger-bundle.yaml -o docs/swagger/postman-import-files/swagger-postman.json -p
