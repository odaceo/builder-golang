#!/bin/bash

# This install script is intended to install the dependency manager for Go.

# Install Go Dep
curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

# Print the installed Go Dep version
dep version
