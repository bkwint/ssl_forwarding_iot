FROM nginx:1.17.6-alpine

# we need to copy the server configuration
COPY ./conf /etc/nginx/conf.d/

