#!/usr/bin/env bash
# Base16 Ayu Mirage - Mate Terminal color scheme install script
# Khue Nguyen &lt;Z5483Y@gmail.com&gt;

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Ayu Mirage"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-ayu-mirage"
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
dset palette "'#171B24:#F28779:#D5FF80:#FFD173:#5CCFE6:#D4BFFF:#95E6CB:#CCCAC2:#707A8C:#FFAD66:#1F2430:#242936:#8A9199:#D9D7CE:#F29E74:#F3F4F5'"
dset background-color "'#171B24'"
dset foreground-color "'#CCCAC2'"
dset bold-color "'#CCCAC2'"
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
