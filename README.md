# Vagrant Boxes - Fedora

## Overview

This repository contains Packer templates for creating Fedora Vagrant boxes.

## Current Boxes

- [Fedora Rawhide](https://getfedora.org/ja/server/)

## Building the Vagrant boxes with Packer

To build all the boxes, you will need installed requires the software listed below.  

- VMware
  - [Fusion](https://www.vmware.com/products/fusion)
  - [Workstation](https://www.vmware.com/products/workstation)

We make use of JSON files containing user variables to build specific version of Ubuntu.  
You tell `packer` to use a specific user variable file via the `-var-file=` command line option.  

For example, to build on VMware Platform, use the following:

```bash
# fedora rawhide on VMware
$ FEDORA_VERSION=rawhide make build
```
