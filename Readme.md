This is a public docker image that is built on top of official PHP image to provide pre installed extenions for crowphp in the CI environment and production
## Supported tags and respective Dockerfile links
```
8.0-cli-buster, 8.0-cli-buster-xdebug
```

## How to use this image

### Create a Dockerfile in your PHP project

```
FROM crowphp/php:8.0-cli-buster
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "php", "./your-script.php" ]
```
Then, run the commands to build and run the Docker image:

```
$ docker build -t my-php-app .
$ docker run -it --rm --name my-running-app my-php-app
```

### Run a single PHP script
For many simple, single file projects, you may find it inconvenient to write a complete Dockerfile. In such cases, you can run a PHP script by using the PHP Docker image directly:

```
$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:7.4-cli php your-script.php
```
For more extensions and on how to use php image follow the official documentation:

https://hub.docker.com/_/php



## Quick reference
Where to get help: the Docker Community Forums, the Docker Community Slack, or Stack Overflow

Where to file issues: https://github.com/crowphp/phpunit/issues

## What is PHP?
PHP is a server-side scripting language designed for web development, but which can also be used as a general-purpose programming language. PHP can be added to straight HTML or it can be used with a variety of templating engines and web frameworks. PHP code is usually processed by an interpreter, which is either implemented as a native module on the web-server or as a common gateway interface (CGI).

## License
View license information for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
