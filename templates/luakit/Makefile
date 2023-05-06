# This Makefile helps to generate themes of your base16 template.
# It is meant to be executed inside the repository.

BUILD=pybase16
REPO=$(shell pwd)
TEMPLATE=$(shell basename ${REPO})
THEME_DIR=themes
COLORS_DIR=colors
TEMPLATE_DIR=templates
OUTPUT=output

all: update build

update:
	$(BUILD) update

build:
	$(BUILD) build -t ${REPO} -o ${OUTPUT}
	rm -rf ${THEME_DIR}
	rm -rf ${COLORS_DIR}
	mv -f ${OUTPUT}/${TEMPLATE}/${THEME_DIR}/ ${THEME_DIR}/
	mv -f ${OUTPUT}/${TEMPLATE}/${COLORS_DIR}/ ${COLORS_DIR}/
	rm -rf ${OUTPUT} ${TEMPLATE_DIR}/*/
