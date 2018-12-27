FROM paperist/alpine-texlive-ja
MAINTAINER pj <pj.kyosyou@outlook.jp>
RUN apk add --virtual curl
RUN tlmgr install beamer
CMD curl https://raw.githubusercontent.com/tiuuuuPJ/settings/master/dotfiles/.latexmkrc > ~/.latexmkrc
CMD latexmk -pvc -view=none *.tex
