BASE_DIR_ROOT:=$(shell git rev-parse --show-toplevel)

build:
	$(BASE_DIR_ROOT)/scripts/build

