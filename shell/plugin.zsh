[ -z "$BASE16_SHELL_CONFIG" ] && BASE16_SHELL_CONFIG="$HOME/.base16"
[ -z "$BASE16_TMUX_THEME_PATH" ] && BASE16_TMUX_THEME_PATH="$HOME/.local/share/tmux_base16_theme.conf"


function luma {
  [ -z "$1" ] && return 1 || local COLOR_HEX=$1
  local COLOR_HEX_RED=$(echo "$COLOR_HEX" | cut -c 1-2)
  local COLOR_HEX_GREEN=$(echo "$COLOR_HEX" | cut -c 3-4)
  local COLOR_HEX_BLUE=$(echo "$COLOR_HEX" | cut -c 5-6)
  local COLOR_DEC_RED=$((16#$COLOR_HEX_RED))
  local COLOR_DEC_GREEN=$((16#$COLOR_HEX_GREEN))
  local COLOR_DEC_BLUE=$((16#$COLOR_HEX_BLUE))
  local COLOR_LUMA_RED=$((0.2126 * $COLOR_DEC_RED))
  local COLOR_LUMA_GREEN=$((0.7152 * $COLOR_DEC_GREEN))
  local COLOR_LUMA_BLUE=$((0.0722 * $COLOR_DEC_BLUE))
  local COLOR_LUMA=$(($COLOR_LUMA_RED + $COLOR_LUMA_GREEN + $COLOR_LUMA_BLUE))
  echo "$COLOR_LUMA"
}

function color {
  emulate -L zsh
  local SCHEME;
  local BASE16_CONFIG_PREVIOUS="$BASE16_SHELL_CONFIG.previous"
  local STATUS=0

  switch() {
    SCHEME=$1
    local FILE="$BASE16_SHELL_DIR/base16-$SCHEME.sh"
    if [[ -e "$FILE" ]]; then
      local BG=$(grep color_background= "$FILE" | cut -d \" -f2 | sed -e 's#/##g')
      local LUMA=$(luma "$BG")
      local LIGHT=$((LUMA > 127.5))
      local BACKGROUND=dark
      if [ "$LIGHT" -eq 1 ]; then
        BACKGROUND=light
      fi

      if [ -e "$BASE16_SHELL_CONFIG" ]; then
        cp "$BASE16_SHELL_CONFIG" "$BASE16_CONFIG_PREVIOUS"
      fi

      echo "$SCHEME" >! "$BASE16_SHELL_CONFIG"
      echo "$BACKGROUND" >> "$BASE16_SHELL_CONFIG"
      sh "$FILE"

      if [ ! -z "$BASE16_TMUX_THEME_DIR" ]; then
        rm -rf $BASE16_TMUX_THEME_PATH;
        ln -sf $BASE16_TMUX_THEME_DIR/base16-$SCHEME.conf $BASE16_TMUX_THEME_PATH;
        [[ -n "$TMUX" ]] && tmux source-file $BASE16_TMUX_THEME_PATH;
      fi

      if [ !  -z "$BASE16_NVIM_UPDATE_ARGS" ]; then
         command -v nvim-ctrl &> /dev/null &&  nvim-ctrl $BASE16_NVIM_UPDATE_ARGS;
      fi

      export BASE16_THEME="$SCHEME"

    else
      echo "Scheme '$SCHEME' not found in $BASE16_SHELL_DIR"
      STATUS=1
    fi
  }

  zparseopts -D -E -- q=QUIET -quiet=QUIET

  if [ $# -eq 0 ]; then
    if [ -s "$BASE16_SHELL_CONFIG" ]; then
      cat "$BASE16_SHELL_CONFIG"
      SCHEME=$(head -1 "$BASE16_SHELL_CONFIG")
      switch "$SCHEME"
      return
    else
      SCHEME=help
    fi
  else
    SCHEME=$1
  fi

  local ALL_SCHEMES=($(find "$BASE16_SHELL_DIR" -name 'base16-*.sh' | \
    sed -E 's|.+/base16-||' | sed -E 's/\.sh//' | grep "${2:-.}" | sort))

  case "$SCHEME" in
    help)
      echo 'color                                          (show current scheme)'
      echo 'color bright|default-dark|grayscale-light|...  (switch to scheme)'
      echo 'color help                                     (show this help)'
      echo 'color ls [pattern]                             (list available schemes)'
      echo 'color rand [-q/--quiet] [pattern]              (choose a random scheme)'
      return
      ;;
    ls)
      printf '%s\n' "${ALL_SCHEMES[@]}" | column;;
    rand)
      local RANDOM_COLOR=${ALL_SCHEMES[$(($RANDOM % ${#ALL_SCHEMES[@]} + 1))]}
      if [[ ${#QUIET} -eq 0 ]]; then
        echo "$RANDOM_COLOR"
      fi
      switch "$RANDOM_COLOR"
      ;;
    -)
      if [[ -s "$BASE16_CONFIG_PREVIOUS" ]]; then
        local PREVIOUS_SCHEME=$(head -1 "$BASE16_CONFIG_PREVIOUS")
        switch "$PREVIOUS_SCHEME"

      else
        echo "warning: no previous config found at $BASE16_CONFIG_PREVIOUS"
        STATUS=1
      fi
      ;;
    *)
      switch "$SCHEME"
      ;;
  esac

  unfunction switch
  return $STATUS
}

function () {
  emulate -L zsh

  if [[ -s "$BASE16_SHELL_CONFIG" ]]; then
    local SCHEME=$(head -1 "$BASE16_SHELL_CONFIG")
    local BACKGROUND=$(sed -n -e '2 p' "$BASE16_SHELL_CONFIG")
    if [ "$BACKGROUND" != 'dark' -a "$BACKGROUND" != 'light' ]; then
      echo "warning: unknown background type in $BASE16_SHELL_CONFIG"
    fi
    color "$SCHEME"
  else
    color bright
  fi
}

