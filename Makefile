#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := esp-at

export IDF_PATH ?= $(PWD)/esp-idf

EXTRA_CFLAGS += -DSDK_GIT=IDF_VER
include $(IDF_PATH)/make/project.mk

print_flash_cmd:
	echo $(ESPTOOL_WRITE_FLASH_OPTIONS) $(ESPTOOL_ALL_FLASH_ARGS) | sed -e 's:'$(PWD)/build/'::g'
