# zinit package for fzf [binary]
# Generated by zinit-pkg-gen.sh
# 2021-11-27T11:43:54+01:00
AUTHOR='Junegunn Choi'
DESCRIPTION='A command-line fuzzy finder'
LICENSE='MIT'
MESSAGE=''
NAME='zsh-fzf'
PARAM_DEFAULT=''
REQUIREMENTS='cp'
URL='https://github.com/junegunn/fzf'
VERSION='0.28.0'

zinit \
    as'command' \
    atclone'mkdir -p $ZPFX/bin;
      cp -vf fzf $ZPFX/bin' \
    atpull'%atclone' \
    dl'https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.zsh -> _fzf_completion;
      https://raw.githubusercontent.com/junegunn/fzf/master/man/man1/fzf-tmux.1 -> $ZPFX/man/man1/fzf-tmux.1;
      https://raw.githubusercontent.com/junegunn/fzf/master/man/man1/fzf.1 -> $ZPFX/man/man1/fzf.1' \
    from'gh-r' \
    id-as'junegunn/fzf' \
    lucid \
    nocompile \
    pick'$ZPFX/bin/fzf' \
  for @junegunn/fzf

# vim: set ft=zsh et ts=2 sw=2 :
