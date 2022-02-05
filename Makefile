.PHONY: all update clean build

BUILD=pybase16
OUTPUT=share
TARGETS=-t nvim -t shell -t tmux

all: update clean build

update:
	$(BUILD) update

clean:
	rm -rf ${OUTPUT}

build: clean
	$(BUILD) build ${TARGETS} -o ${OUTPUT}
