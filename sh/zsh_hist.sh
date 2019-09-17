# cerner_2^5_2019
# quick zsh history grep and format

#!/bin/sh
cat $HOME/.zsh_history | grep $1 | sed 's/^[^;]*;//g'
