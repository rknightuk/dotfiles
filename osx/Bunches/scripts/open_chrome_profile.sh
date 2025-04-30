#!/bin/bash
# workaround for this: https://github.com/ttscoff/bunch/issues/254#issuecomment-1450608871
# Provide an argument with the profile id $1 to open Chrome webpage $2
# To get profile id, check chrome://version
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --profile-directory="$1" "$2"