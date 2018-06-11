#!/bin/bash

# This install script is intended to install the Go SDK.
#
# Environment variables:
# - GOPATH: the directory that contains the source for Go projects and their binaries
# - GOLANG_VERSION: the version to install
# - GOLANG_INSTALL_DIR: the directiry that contains the SDK binaries

# Create the Go Path
mkdir -p "${GOPATH}/src" "${GOPATH}/bin" && chmod -R 777 "$GOPATH"

# Install the SDK 
wget -O go.tgz "https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz"
mkdir -p ${GOLANG_INSTALL_DIR}
tar -C ${GOLANG_INSTALL_DIR} -xzf go.tgz --strip 1
rm go.tgz

# Print the installed Go version
go version
