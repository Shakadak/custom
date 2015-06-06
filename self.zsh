export MAIL=npineau@student.42.fr

alias mount_rust="hdiutil attach -mountpoint ~/Rust ~/img/Rust.sparseimage"
alias unmount_rust="hdiutil eject ~/Rust"

alias mount_app="hdiutil attach -mountpoint ~/Applications ~/img/Applications.sparseimage"
alias unmount_app="hdiutil eject ~/Applications"

alias mount_cabal="hdiutil attach -mountpoint ~/.cabal ~/img/cabal.sparseimage"
alias unmount_cabal="hdiutil eject ~/.cabal"

alias mount_brew="hdiutil attach -mountpoint ~/.brew ~/img/brew.sparseimage"
alias unmount_brew="hdiutil eject ~/.brew"

# Add GHC 7.10.1 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/nfs/zfs-student-4/users/2013/npineau/Applications/ghc-7.10.1.app"
if [ -d "$GHC_DOT_APP" ]; then
	export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi
