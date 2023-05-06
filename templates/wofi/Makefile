# this is expected to be executed from the root of the template repo
BUILDER=pybase16
THEME_DIR=themes
TEMPLATE_DIR=templates
TEMPLATE_NAME=$(shell basename $(shell pwd))
OUTPUT_DIR=output
SOURCES_DIR=sources
SCHEMES_DIR=schemes

all: update build

update:
	$(BUILDER) update

build:
	$(BUILDER) build -t $(shell pwd) -o $(OUTPUT_DIR)
	mv $(OUTPUT_DIR)/$(TEMPLATE_NAME)/themes/* $(THEME_DIR)/
	rm -rf $(SOURCES_DIR) $(OUTPUT_DIR) $(TEMPLATE_DIR)/*/

clean:
	rm -rf sources.yaml $(SCHEMES_DIR)
