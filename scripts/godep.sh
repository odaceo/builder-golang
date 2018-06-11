#!/bin/bash

# This install script is intended to install the dependency manager for Go.
#
# Environment variables:
# - GODEP_VERSION: the version to install

# Install Go Dep
curl https://raw.githubusercontent.com/golang/dep/master/install.sh | DEP_RELEASE_TAG=v${GODEP_VERSION} sh

# Print the installed Go Dep version
dep version
