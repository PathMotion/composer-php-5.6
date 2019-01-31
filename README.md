# composer-php-5.6 [![Build Status](https://travis-ci.org/PathMotion/composer-php-5.6.svg?branch=master)](https://travis-ci.org/PathMotion/composer-php-5.6)
Composer image with Php 5.6 and XDebug extension enabled for running CI with code coverage capabilities.

## Description
This image is based on [prooph/docker-files](https://github.com/prooph/docker-files/tree/fad9c12cf74f84ea52f33b5483ad28e06d631e01/composer) containing a few extra Php extensions. We also added XDebug support.

It contains:
 - php 5.6.33
 - composer 1.6.3
 - XDebug 2.5.5

## Usage
### Build the image
```
docker build -t image_name .
```

### Run container
From any Php 5.6 project directory you want to install, run `composer install` from the container:
```
docker run -it --rm -v $PWD:/app image_name install
```

If you need more commands, run `bash` from the container:
```
docker run -it --rm --entrypoint /bin/bash -v $PWD:/app image_name
```
Then, run any commands like `phpunit` for instance:
```
root@a1b2c3:/app# ./vendor/bin/phpunit
```
### Warning
This image is meant to be used for development or CI environments. This is not Production grade.
