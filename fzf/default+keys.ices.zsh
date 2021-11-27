# zinit package for fzf [default+keys]
# Generated by zinit-pkg-gen.sh
# 2021-11-27T11:43:58+01:00
AUTHOR='Junegunn Choi'
DESCRIPTION='A command-line fuzzy finder'
LICENSE='MIT'
MESSAGE=''
NAME='zsh-fzf'
PARAM_DEFAULT=''
REQUIREMENTS='go;make;cp'
URL='https://github.com/junegunn/fzf'
VERSION='0.28.0'

zinit \
    as'command' \
    atclone'PREFIX=$ZPFX FZF_VERSION=0.28.0 FZF_REVISION=zinit-pack make install &&
      mkdir -p $ZPFX/{bin,man/man1} &&
      cp shell/completion.zsh _fzf_completion &&
      cp -vf bin/fzf(|-tmux) $ZPFX/bin &&
      cp -vf man/man1/fzf(|-tmux).1 $ZPFX/man/man1' \
    atpull'%atclone' \
    depth'1' \
    id-as'junegunn/fzf' \
    lucid \
    nocompile \
    pick'$ZPFX/bin/fzf(|-tmux)' \
    src'shell/key-bindings.zsh' \
  for @junegunn/fzf

# vim: set ft=zsh et ts=2 sw=2 :
