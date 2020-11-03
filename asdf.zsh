. $HOME/.asdf/asdf.sh
# . $HOME/.asdf/completions/asdf.bash

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit
