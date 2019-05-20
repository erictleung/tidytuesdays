# set shell
SHELL := /usr/bin/env bash

.PHONY : help

## help : Help page for Makefile
help :
	@echo ""
	@echo "Usage:"
	@echo -e "\tmake <target>\n"
	@echo -e "Target\t\tDescription"
	@printf '%.s-' {1..6}; \
		printf '%.s ' {1..10}; \
		printf '%.s-' {1..11}; echo ''
	@grep '## [A-Za-z]* : [A-Za-z]*' $(MAKEFILE_LIST) | \
		sed 's/## //' | \
		awk -F" : " '{ printf "%-16s%s\n", $$1, $$2}'

.DEFAULT_GOAL := help
