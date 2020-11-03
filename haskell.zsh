# add symlink for this to work, eg:
# ➜  bin pwd
# /home/nathanael/.local/bin
# ➜  bin ll
# total 0
# lrwxrwxrwx 1 nathanael nathanael 58 oct.  11 11:37 haskell -> /home/nathanael/.stack/programs/x86_64-linux/ghc-8.4.3/bin
export PATH=$HOME/.local/bin/haskell:$PATH

export CABAL_HOME=$HOME/.cabal
export PATH=$CABAL_HOME/bin:$PATH

# Stack auto completion
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
eval "$(stack --bash-completion-script stack)"
