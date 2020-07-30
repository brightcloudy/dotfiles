#!/usr/bin/env bash
cd /tmp || return
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
DIR=/usr/share/fonts/source-code-pro-nerd-fonts
sudo /usr/bin/env bash -c "mkdir -p $DIR && unzip -d $DIR SourceCodePro.zip"
