#!/usr/bin/env bash
# Base16 Nova - Mate Terminal color scheme install script
# George Essig (https://github.com/gessig), Trevor D. Miller (https://trevordmiller.com)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Nova"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-nova"
[[ -z "$DCONFTOOL" ]] && DCONFTOOL=dconf
[[ -z "$BASE_KEY" ]] && BASE_KEY=/org/mate/terminal

PROFILE_KEY="$BASE_KEY/profiles/$PROFILE_SLUG"
DEFAULT_SLUG=$("$DCONFTOOL" read "$BASE_KEY/global/default-profile" | tr -d \')
DEFAULT_KEY="$BASE_KEY/profiles/$DEFAULT_SLUG"

dcopy() {
  local from="$1"; shift
  local to="$1"; shift

  "$DCONFTOOL" dump "$from/" | "$DCONFTOOL" load "$to/"
}

dset() {
  local key="$1"; shift
  local val="$1"; shift

  "$DCONFTOOL" write "$PROFILE_KEY/$key" "$val"
}

glist_append() {
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$DCONFTOOL" read "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "'$val'"
    } | head -c-1 | tr "\n" ,
  )"

  "$DCONFTOOL" write "$key" "[$entries]"
}

if [ -n "$DEFAULT_SLUG" ]; then
  dcopy "$DEFAULT_KEY" "$PROFILE_KEY"
fi

dset visible-name "'$PROFILE_NAME'"
dset palette "'#3C4C55:#83AFE5:#7FC1CA:#A8CE93:#83AFE5:#9A93E1:#F2C38F:#C5D4DD:#899BA6:#7FC1CA:#556873:#6A7D89:#899BA6:#899BA6:#F2C38F:#556873'"
dset background-color "'#3C4C55'"
dset foreground-color "'#C5D4DD'"
dset bold-color "'#C5D4DD'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"

glist_append "$BASE_KEY/global/profile-list" "$PROFILE_SLUG"

unset PROFILE_NAME
unset PROFILE_SLUG
unset DCONFTOOL
unset BASE_KEY
unset PROFILE_KEY
unset DEFAULT_SLUG
unset DEFAULT_KEY
