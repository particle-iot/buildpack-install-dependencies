# Buildpack installing library dependencies

[![Build Status](https://travis-ci.org/spark/buildpack-install-dependencies.svg?branch=master)](https://travis-ci.org/spark/buildpack-install-dependencies) [![](https://imagelayers.io/badge/particle/buildpack-install-dependencies:latest.svg)](https://imagelayers.io/?images=particle/buildpack-install-dependencies:latest 'Get your own badge on imagelayers.io')


This buildpack runs `particle library install --vendor` command inside of user sources which installs all dependencies inside of the project.

## Building image

```bash
$ docker-compose build
```

## Running

Provided you have a project with dependencies in `~/tmp/input` directory running following command will install those and save both project and dependencies in `~/tmp/output`:

```bash
$ export ACCESS_TOKEN=<VALID_TOKEN>
$ docker run --rm \
  -v ~/tmp/input:/input \
  -v ~/tmp/output:/output \
  -e ACCESS_TOKEN=$ACCESS_TOKEN \
  particle/buildpack-install-dependencies
```

## Testing

To run tests use:

```bash
$ docker run --rm \
  -e ACCESS_TOKEN=$ACCESS_TOKEN \
  particle/buildpack-install-dependencies \
  /bin/run-tests
```
