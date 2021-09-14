.PHONY: all update build

BUILD=pybase16
LUA_THEME_DIR=colors
TMUX_THEME_DIR=tmux
SHELL_THEME_DIR=shell
OUTPUT=output

all: update build

update:
	$(BUILD) update

build:
	rm -rf ${OUTPUT}
	rm -rf ${LUA_THEME_DIR} ${SHELL_THEME_DIR} ${TMUX_THEME_DIR}
	$(BUILD) build -t nvim -t shell -t tmux -o ${OUTPUT}
	mv ${OUTPUT}/nvim/colors/ ${LUA_THEME_DIR}/
	mv ${OUTPUT}/shell/scripts/ ${SHELL_THEME_DIR}/
	mv ${OUTPUT}/tmux/colors/ ${TMUX_THEME_DIR}/
	rm -rf ${OUTPUT}
