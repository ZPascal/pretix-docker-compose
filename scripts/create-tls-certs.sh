#!/bin/sh

# Switch the directory
echo "Switch the directory"
path=$(pwd)/config
cd certs

# Create the Nginx ca
echo "Create the Nginx ca"
openssl req -new -x509 -sha256 -newkey rsa:4096 -nodes -keyout ca_nginx.key -out ca_nginx.crt -days 3650 \
-extensions ext \
-config $path/ca_nginx.conf

# Create the server certificates
echo "Create the Nginx server certificates"
openssl genrsa -out nginx.key 4096
openssl req -new -key nginx.key -out nginx.csr -extensions v3_req -config $path/server_nginx.conf
openssl x509 -inform pem -req -days 1825 -in nginx.csr -CA ca_nginx.crt -CAkey ca_nginx.key -CAcreateserial -out nginx.crt -extensions v3_req -extfile $path/server_nginx.conf