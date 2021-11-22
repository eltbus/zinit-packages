# zinit package for pyenv [bgn]
# Generated by gen-pkg.sh
# 2021-11-22T20:01:15+01:00
AUTHOR="Yuu Yamashita, Sam Stephenson, Mislav Marohnić, Josh Friend"
DESCRIPTION="Simple Python version management"
LICENSE="MIT"
REQUIREMENTS="bgn"
URL="https://github.com/pyenv/pyenv"
VERSION="1.2.20"

zinit \
    as'null' \
    atclone'PYENV_ROOT="$PWD" ./libexec/pyenv init - > zpyenv.zsh' \
    atinit'export PYENV_ROOT="$PWD"' \
    atpull'%atclone' \
    lucid \
    nocompile'!' \
    sbin'bin/pyenv' \
    src'zpyenv.zsh' \
  for @pyenv/pyenv

# vim: set ft=zsh et ts=2 sw=2 :
