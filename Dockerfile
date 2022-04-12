FROM fedora:35

LABEL "maintainer"="Vladyslav Shtabovenko>"

LABEL "com.github.actions.name"="Compile LaTeX"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="red"

# we don't need that repo ...
RUN rm /etc/yum.repos.d/fedora-cisco-openh264.repo

# ... upgrade packages if necessary
RUN dnf upgrade --assumeyes && dnf clean packages

# Install LaTeX

RUN dnf install --assumeyes texlive-arara && dnf clean packages

RUN dnf install --assumeyes texlive && dnf clean packages

RUN dnf install --assumeyes texlive-latex texlive-collection-bibtexextra texlive-collection-binextra \
texlive-collection-fontsrecommended texlive-collection-fontutils texlive-collection-formatsextra \
texlive-collection-genericextra texlive-collection-genericrecommended texlive-collection-htmlxml \
texlive-collection-humanities texlive-collection-langgerman texlive-collection-latexextra \
texlive-collection-latexrecommended texlive-collection-mathextra texlive-collection-metapost \
texlive-collection-omega texlive-collection-pictures texlive-collection-plainextra texlive-collection-pstricks \
texlive-collection-publishers texlive-collection-science  texlive-bbold latexmk texlive-collection-luatex \
texlive-xetex texlive-collection-xetex  texlive-font-change-xetex texlive-inconsolata texlive-*garamond* \
texlive-academicons texlive-crimson texlive-crimsonpro texlive-qualitype texlive-cabin && dnf clean packages

RUN dnf install --assumeyes texlive-antiqua texlive-sourcesanspro texlive-sourceserifpro  texlive-roboto \
texlive-stix texlive-fouriernc  texlive-dingbat  texlive-dejavu  texlive-courier-scaled  texlive-cm-lgc \
texlive-cm-unicode  texlive-cmexb  texlive-cmll   texlive-cmpica texlive-cantarell  texlive-clearsans \
texlive-alegreya texlive-raleway  texlive-libertinus texlive-libertinust1math texlive-mathspec \
gfs-neohellenic-fonts texlive-gfsneohellenic lilypond-texgyre-* texlive-crimson-* *newtx* *cochineal* \
texlive-yfonts-t1 texlive-yinit-otf texlive-gothic texlive-cm* texlive-ec* texlive-ibarra texlive-fontawesome5 texlive-bbold-type1 && dnf clean packages
