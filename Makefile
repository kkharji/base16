.PHONY: all update clean build

BUILD=pybase16
OUTPUT=share

all: update clean build

update:
	$(BUILD) update

clean:
	rm -rf ${OUTPUT}

build: clean
	$(BUILD) build -t nvim -t shell -t tmux -o ${OUTPUT}
