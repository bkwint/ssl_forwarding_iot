# Use a nginx proxy to do client cert authentication for you

Simple nginx upstream proxy to allow small iot devices that do not support ssl to connect to an ssl host. Default also enables client certificate authentication for proper protection.

## PFX to pem
To get the appropriate files you should do the following:

```
### Generate a key file
openssl pkcs12 -in filename.pfx -nocerts -out key.pem
openssl pkcs12 -in filename.pfx -clcerts -nokeys -out cert.pem
openssl rsa -in key.pem -out key.pem
```

This will result in 2 files, cert.pem and key.pem (the key no longer has a password, so keep it safe)

## Edit the nginx default config to point to the proper url
Modify line 7 to point to the proper url
```
proxy_pass https://localhost;
```

## Run the container
```
docker-compose up
```
