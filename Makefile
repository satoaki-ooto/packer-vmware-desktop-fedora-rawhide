MAKE = make --no-print-directory
all: help

#
# :::: Variables
#
VERSION := $(FEDORA_VERSION)
DOMAIN := $(shell echo $(CI_SERVER_HOST) | sed  "s/gle.//g")

PACKER_BIN := $(shell which packer)
DATE := $(shell echo $(date +"%Y%m%d"))

validate:
	@$(PACKER_BIN) validate -var-file template/common/var.json \
							-var-file template/common/vmware.json \
							-var-file template/$(VERSION)/var.json platform/vmware.json

build:
	@$(PACKER_BIN) build -var-file template/common/var.json \
						-var-file template/common/vmware.json \
						-var-file template/$(VERSION)/var.json platform/vmware.json
