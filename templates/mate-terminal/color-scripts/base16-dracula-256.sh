#!/usr/bin/env bash
# Base16 Dracula - Mate Terminal color scheme install script
# Mike Barkmin (http://github.com/mikebarkmin) based on Dracula Theme (http://github.com/dracula)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Dracula 256"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-dracula-256"
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
dset palette "'#282936:#ea51b2:#ebff87:#00f769:#62d6e8:#b45bcf:#a1efe4:#e9e9f4:#626483:#ea51b2:#ebff87:#00f769:#62d6e8:#b45bcf:#a1efe4:#f7f7fb'"
dset background-color "'#282936'"
dset foreground-color "'#e9e9f4'"
dset bold-color "'#e9e9f4'"
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
