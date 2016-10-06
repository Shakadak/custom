# Add GHC 7.10.2 to the PATH, via https://ghcformacosx.github.io/
export GHC_HOME=$HOME/dev/bin/ghc
export PATH=$GHC_HOME/bin:$PATH
# stackage install dir
export PATH=$HOME/.local/bin:$PATH

export CABAL_HOME=$HOME/.cabal
export PATH=$CABAL_HOME/bin:$PATH

alias ghct='expect <(echo log_user 0 ; echo spawn ghci ; echo send \":set +t\\n\" ; echo send \":set prompt λ\\n\" ; echo interact)'
alias stackrepl='expect <(echo log_user 0 ; echo spawn stack ghci ; echo send \":set +t\\n\" ; echo send \":set prompt λ\\n\" ; echo interact)'
export PATH=$HOME/.stack/programs/x86_64-linux/ghc-8.0.1/bin:$PATH
export PATH=$HOME/.stack/programs/x86_64-osx/ghc-8.0.1/bin:$PATH
