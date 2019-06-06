#!/bin/sh

# Install curl if not already installed
echo ""
brew install curl

# Install oh-my-zsh
echo "Installing Oh My ZSH"
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh) # change default shell

# Install powerlevel9k theme
echo "Installing powerlevel9k theme..."
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install fonts
echo "Installing fonts..."
git clone https://github.com/powerline/fonts.git
./zshfonts/install.sh

# Install fast syntax highlighting
cd ~
git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting

# Copy config files
cp .zshrc ~/.zshrc
cp .bashrc ~/.bashrc
cp dymotd /etc/dynmotd
cp .bash_profile ~/.bash_profile
