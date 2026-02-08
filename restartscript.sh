#!/bin/bash
# may need to add to path -> '   alias nvim="~/.config/nvim/restartscript.sh"   ' and make this file executable
while true; do
    /opt/nvim-linux-x86_64/bin/nvim "$@"  # Replace with your actual nvim path
    if [ $? -ne 1 ]; then
        break
    fi
done
