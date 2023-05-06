#!/usr/bin/env bash
# Base16 DanQing Light - Mate Terminal color scheme install script
# Wenhan Zhu (Cosmos) (zhuwenhan950913@gmail.com)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 DanQing Light 256"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-danqing-light-256"
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
dset palette "'#fcfefd:#F9906F:#8AB361:#F0C239:#B0A4E3:#CCA4E3:#30DFF3:#5a605d:#cad8d2:#F9906F:#8AB361:#F0C239:#B0A4E3:#CCA4E3:#30DFF3:#2d302f'"
dset background-color "'#fcfefd'"
dset foreground-color "'#5a605d'"
dset bold-color "'#5a605d'"
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
