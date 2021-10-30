#!/bin/sh

echo "$GIT_CRYPT_KEY" | base64 -d >./.git-crypt-key
if [ "$MODE" = 'unlock' ]; then
  git-crypt unlock ./.git-crypt-key
elif [ "$MODE" = 'lock' ]; then
  git-crypt lock
fi
