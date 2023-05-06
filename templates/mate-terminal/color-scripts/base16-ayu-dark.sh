#!/usr/bin/env bash
# Base16 Ayu Dark - Mate Terminal color scheme install script
# Khue Nguyen &lt;Z5483Y@gmail.com&gt;

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Ayu Dark"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-ayu-dark"
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
dset palette "'#0F1419:#F07178:#B8CC52:#FFB454:#59C2FF:#D2A6FF:#95E6CB:#E6E1CF:#3E4B59:#FF8F40:#131721:#272D38:#BFBDB6:#E6E1CF:#E6B673:#F3F4F5'"
dset background-color "'#0F1419'"
dset foreground-color "'#E6E1CF'"
dset bold-color "'#E6E1CF'"
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
