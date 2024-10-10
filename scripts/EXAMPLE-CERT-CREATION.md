# Example of the cert creation for the Nginx setup

## Creation

Please execute the following script `bash create-tls-certs.sh` to create all necessary certificates for the complete setup of all related components.

## Adaptation

Please adjust the configuration files inside the [config](./config) folder and adapt the corresponding values for the req_distinguished_names and subjectAltNames based on your organisation and configuration. You can find [here](https://support.dnsimple.com/articles/what-is-common-name/) and [here](https://learn.microsoft.com/en-us/azure/application-gateway/self-signed-certificates) more information about the corresponding values and CA certificates in general.

## Ca Certificates

### Nginx

Describes the Certificate Authority (certificate & key) for the Nginx server.

## Server Certificates

### Nginx

Describes the server certificate and key for the Nginx server, and it's signed by the Nginx CA.