# Buildpack installing library dependencies

[![Build Status](https://travis-ci.org/spark/buildpack-install-dependencies.svg?branch=master)](https://travis-ci.org/spark/buildpack-install-dependencies) [![](https://imagelayers.io/badge/particle/buildpack-install-dependencies:latest.svg)](https://imagelayers.io/?images=particle/buildpack-install-dependencies:latest 'Get your own badge on imagelayers.io')


This buildpack runs `particle library install --vendor` command inside of user sources which installs all dependencies inside of the project.

## Building image

**Before building this image, build or fetch [buildpack-base-node](https://github.com/spark/buildpack-base-node).**

```bash
$ export BUILDPACK_IMAGE=install-dependencies
$ git clone "git@github.com:spark/buildpack-${BUILDPACK_IMAGE}.git"
$ cd buildpack-$BUILDPACK_IMAGE
$ docker build -t particle/buildpack-$BUILDPACK_IMAGE .
```

## Running

Provided you have a project with dependencies in `~/tmp/input` directory running following command will install those and save both project and dependencies in `~/tmp/output`:

```bash
$ docker run --rm \
  -v ~/tmp/input:/input \
  -v ~/tmp/output:/output \
  particle/buildpack-install-dependencies
```

## Testing

To run tests use:

```bash
$ docker run --rm \
  particle/buildpack-install-dependencies \
  /bin/run-tests
```
