# zinit package for firefox-dev [default]
# Generated by gen-pkg.sh
# 2021-11-23T14:35:00+01:00
AUTHOR="Mozilla Foundation"
DESCRIPTION="Automatic privacy is here. Download Firefox to block over 2000 trackers."
LICENSE="Mozilla Public License"
MESSAGE="A snippet providing Firefox Developer Edition."
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
  for https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=${${${(M)OSTYPE##linux}:+linux64}:-${${(M)OSTYPE##darwin}:+osx}}&lang=en-US

# vim: set ft=zsh et ts=2 sw=2 :
