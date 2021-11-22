# zinit package for firefox-dev [default]
# Generated by gen-pkg.sh
# 2021-11-22T20:01:10+01:00
AUTHOR="Mozilla Foundation"
DESCRIPTION="Automatic privacy is here. Download Firefox to block over 2000 trackers."
LICENSE="Mozilla Public License"
REQUIREMENTS=""
URL="https://github.com/aws/firefox-dev"
VERSION=""

zinit \
    as'command' \
    atclone'local -A map;
      map=( '\''(#i)linux*'\'' tar.bz2 '\''(#i)(cygwin|win|wsl)*'\'' exe '\''(#i)darwin*'\'' dmg );
      local ext="${map[(k)$OSTYPE]}";
      zpextract ff.pkg $ext --norm ${${OSTYPE:#(#i)(darwin|cygwin|win|wsl)*}:+--move};
      command mv ff.pkg %ID%;
     ' \
    atpull'%atclone' \
    is-snippet \
    lucid \
    mv'%ID% → ff.pkg' \
    nocompile \
    pick'**/firefox(|-bin)(|.exe)' \
  for @zdharma-continuum/null

# vim: set ft=zsh et ts=2 sw=2 :
