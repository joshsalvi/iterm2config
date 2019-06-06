#!/bin/sh

# Install iTerm2
echo "Installing iTerm2..."
cd ~/Downloads
curl -O https://iterm2.com/downloads/stable/iTerm2-3_2_7.zip
shasum -a 256 iTerm2-3_2_7.zip
unzip iTerm2-3_2_7.zip
mv iTerm.app/ /Applications/
cd ~
echo "DONE!"

# Install dependencies if not already installed
echo "Install dependencies with Homebrew..."
brew install curl
brew install cask
echo "DONE!"

# Install oh-my-zsh
echo "Installing Oh My ZSH"
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh) # change default shell
echo "DONE!"

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

# Add iTerm2 to gatekeeper
echo "Adding iTerm2 to gatekeeper. This will prompt you for a system password. Please accept."
spctl --add /Applications/iTerm.app/
nohup open /Applications/iTerm.app/ &>/dev/null &