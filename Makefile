MAKEFLAGS += --warn-undefined-variables
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c +x
.DEFAULT_GOAL := all
.DELETE_ON_ERROR:
.SUFFIXES:

kubectl:
	@curl -LO "https://dl.k8s.io/release/$$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x kubectl
	
.PHONY: update-builder
update-builder: kubectl
	@./kubectl apply -f kpack-resources.yml