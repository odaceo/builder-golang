#!/bin/bash

# This install script is intended to install the Go SDK.
#
# Environment variables:
# - GOPATH: the directory that contains the source for Go projects and their binaries
# - GOLANG_VERSION: the version to install

# Create Workspace
mkdir -p "${GOPATH}/bin" "${GOPATH}/pkg" "${GOPATH}/src"
chmod -R 777 "$GOPATH"

# Update your local package index
apt-get update

# Install Golang package
apt-get install -y golang-${GOLANG_VERSION}

# Remove the local package index
rm -rf /var/lib/apt/lists/*

# Create symblic links
update-alternatives --install /usr/bin/go go /usr/lib/go-${GOLANG_VERSION}/bin/go 100
update-alternatives --install /usr/bin/gofmt gofmt /usr/lib/go-${GOLANG_VERSION}/bin/gofmt 100

# Print the installed Go version
go version
