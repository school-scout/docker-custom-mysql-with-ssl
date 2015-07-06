# Custom MySQL Docker image

This image is based on the official [mysql](https://registry.hub.docker.com/_/mysql/) image. The mysqld configuration will be generated from ENV variables beginning with `MYSQLD_` which must be given on `docker run`.

## General use

Example:

    docker run -e MYSQLD_INNODB_BUFFER_POOL_SIZE=768000000 schoolscout/custom-mysql-with-ssl:5.6

This will start mysql with the custom config option `innodb_buffer_size=768000000`.

## SSL support

You can set up SSL support for the server through some special ENV variables. You can generate those variables from some existing key, cert and CA files.

Example:

    SERVER_KEY=$(cat -E server.key | xargs)
    SERVER_CERT=$(cat -E server.crt | xargs)
    CA_CERT=$(cat -E CA.crt | xargs)

    docker run -e SERVER_KEY=$SERVER_KEY -e SERVER_CERT=$SERVER_CERT -e CA_CERT=$CA_CERT schoolscout/custom-mysql-with-ssl:5.6

## Supported versions

The image is currently available with MySQL 5.5 and 5.6. Just use the tag corresponding to the version.
