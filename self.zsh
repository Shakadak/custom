export MAIL=npineau@student.42.fr

alias flux="xflux64 -l 48.8566°N -g 2.3522°E -k 2400"

alias mount_rust="hdiutil attach -mountpoint ~/Development/bin/rust ~/img/Rust.sparseimage"
alias unmount_rust="hdiutil eject ~/Development/bin/rust"

alias mount_app="hdiutil attach -mountpoint ~/Applications ~/img/Applications.sparseimage"
alias unmount_app="hdiutil eject ~/Applications"

alias mount_cabal="hdiutil attach -mountpoint ~/.cabal ~/img/cabal.sparseimage"
alias unmount_cabal="hdiutil eject ~/.cabal"

alias unmount_haskell="unmount_cabal; unmount_app"
alias mount_haskell="mount_cabal; mount_app"

alias mount_brew="hdiutil attach -mountpoint ~/.brew ~/img/brew.sparseimage"
alias unmount_brew="hdiutil eject ~/.brew"

alias mount_dev="hdiutil attach -mountpoint ~/dev ~/img/dev.sparseimage"
alias unmount_dev="hdiutil eject ~/dev"

#alias vim="/usr/bin/vim"

function path_prompt() {
word=$PWD
p=
test "${word#*$HOME}" != "$word" && word=${word#$HOME} && p="~"
apath=("${(@s:/:)word}")
path_size=${#apath}
suffixe=$apath[$path_size]
apath=("${apath[@]/$suffixe}")
for dir in $apath; do
	p=$p/$dir[1];
done
p=$p/$suffixe
print $p
}

export PROMPT='$(path_prompt)
|> '

export EMAIL=$MAIL
export PATH=$HOME/scripts:$PATH
export PATH=$HOME/.local/script:$PATH

alias c+='clang++ -Wall -Wextra -Werror *.cpp'
#alias love='/Applications/love.app/Contents/MacOS/love'

export PATH=$HOME/.brew/bin:$PATH

alias cbcopy='xclip -selection clipboard'
alias cbpaste='xclip -selection clipboard -o'

export PGDATA=$HOME/.brew/var/postgres

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
    . ~/.config/exercism/exercism_completion.zsh
fi
