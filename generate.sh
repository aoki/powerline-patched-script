#!/bin/sh

FONT_NAME=SourceCodePro_FontsOnly-1.017

git clone https://github.com/Lokaltog/vim-powerline.git

curl -O "http://jaist.dl.sourceforge.net/project/sourcecodepro.adobe/${FONT_NAME}.zip"
unzip ${FONT_NAME}.zip

fontforge -lang=py -script ./vim-powerline/fontpatcher/fontpatcher "./${FONT_NAME}/OTF/SourceCodePro-Black.otf"
fontforge -lang=py -script ./vim-powerline/fontpatcher/fontpatcher "./${FONT_NAME}/OTF/SourceCodePro-Bold.otf"
fontforge -lang=py -script ./vim-powerline/fontpatcher/fontpatcher "./${FONT_NAME}/OTF/SourceCodePro-ExtraLight.otf"
fontforge -lang=py -script ./vim-powerline/fontpatcher/fontpatcher "./${FONT_NAME}/OTF/SourceCodePro-Light.otf"
fontforge -lang=py -script ./vim-powerline/fontpatcher/fontpatcher "./${FONT_NAME}/OTF/SourceCodePro-Medium.otf"
fontforge -lang=py -script ./vim-powerline/fontpatcher/fontpatcher "./${FONT_NAME}/OTF/SourceCodePro-Regular.otf"
fontforge -lang=py -script ./vim-powerline/fontpatcher/fontpatcher "./${FONT_NAME}/OTF/SourceCodePro-Semibold.otf"

rm -rf ${FONT_NAME}.zip ${FONT_NAME} vim-powerline 
