# zinit package for fzf [bgn+keys]
# Generated by gen-pkg.sh
# 2021-11-22T20:01:10+01:00
AUTHOR="Junegunn Choi"
DESCRIPTION="A command-line fuzzy finder"
LICENSE="MIT"
REQUIREMENTS="go;make;cp;bgn"
URL="https://github.com/junegunn/fzf"
VERSION="0.28.0"

zinit \
    atclone'PREFIX=$ZPFX FZF_VERSION=0.28.0 FZF_REVISION=zinit-pack make install &&
      mkdir -p $ZPFX/{bin,man/man1} &&
      cp shell/completion.zsh _fzf_completion &&
      cp -vf man/man1/fzf(|-tmux).1 $ZPFX/man/man1' \
    atpull'%atclone' \
    depth'1' \
    lucid \
    make'install' \
    nocompile \
    pick'/dev/null' \
    sbin'bin/fzf*' \
    src'shell/key-bindings.zsh' \
  for @junegunn/fzf

# vim: set ft=zsh et ts=2 sw=2 :
