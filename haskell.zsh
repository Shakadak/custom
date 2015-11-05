export GHC_HOME=$HOME/dev/bin/ghc
export PATH=$GHC_HOME/bin:$PATH
# stackage install dir
export PATH=$HOME/.local/bin:$PATH

export CABAL_HOME=$HOME/dev/.cabal
export PATH=$CABAL_HOME/bin:$PATH

alias ghct="expect <(echo log_user 0 ; echo spawn ghci ; echo send \":set +t\\n\" ; echo interact)"
