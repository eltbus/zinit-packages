# zinit package for fzy [bgn]
# Generated by gen-pkg.sh
# 2021-11-22T20:01:13+01:00
AUTHOR="John Hawthorn"
DESCRIPTION="A better fuzzy finder"
LICENSE="MIT"
REQUIREMENTS="cc;make;bgn"
URL="https://github.com/jhawthorn/fzy"
VERSION=""

zinit \
    as'null' \
    atclone'cp -vf fzy.1 $ZPFX/man/man1' \
    atpull'%atclone' \
    lucid \
    make \
    nocompile \
    sbin'fzy;
     contrib/fzy-*' \
  for @jhawthorn/fzy

# vim: set ft=zsh et ts=2 sw=2 :
