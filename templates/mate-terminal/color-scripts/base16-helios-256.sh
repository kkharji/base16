#!/usr/bin/env bash
# Base16 Helios - Mate Terminal color scheme install script
# Alex Meyer (https://github.com/reyemxela)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Helios 256"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-helios-256"
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
dset palette "'#1d2021:#d72638:#88b92d:#f19d1a:#1e8bac:#be4264:#1ba595:#d5d5d5:#6f7579:#d72638:#88b92d:#f19d1a:#1e8bac:#be4264:#1ba595:#e5e5e5'"
dset background-color "'#1d2021'"
dset foreground-color "'#d5d5d5'"
dset bold-color "'#d5d5d5'"
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
