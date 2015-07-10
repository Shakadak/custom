export GHC_HOME=$HOME/Development/bin/ghc

# Add brew binary as first option and Rust as second, the rest comes after.
export PATH=$HOME/.brew/bin:$HOME/Rust/bin:$PATH
export PATH=$GHC_HOME/bin:$PATH
