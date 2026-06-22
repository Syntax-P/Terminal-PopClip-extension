#!/bin/bash
COMMAND="$POPCLIP_TEXT"

osascript <<EOF
tell application "Terminal"
    if not (exists window 1) then
        activate
        delay 0.5
    end if
    do script "$COMMAND"
    activate
end tell
EOF