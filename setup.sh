
echo "download iterm2 theme"
cd ~/Downloads
curl -o "Atom One Dark.itermcolors" https://raw.githubusercontent.com/nathanbuchar/atom-one-dark-terminal/master/scheme/iterm/One%20Dark.itermcolors

echo "download home brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "set gitignore"
cd ~
curl -O https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.gitignore
git config --global core.excludesfile ~/.gitignore

echo "install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo "install oh my zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "install zsh plugins"
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# z
curl -o- https://raw.githubusercontent.com/rupa/z/master/z.sh > ~/.z.sh
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "install nvm plugin"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

echo "set up zsh"
curl -o- https://raw.githubusercontent.com/xiong35/mac-setup/main/.zshrc > ~/.zshrc

echo "install hidden bar"
brew install --cask hiddenbar

echo "TODO: download maccy, a clipboard manager -- https://github.com/p0deje/Maccy/releases"
echo "TODO: download iterm2  -- https://iterm2.com/downloads.html"
echo "TODO: follow the instruction here to set this theme and etc  -- https://github.com/nicolashery/mac-dev-setup#iterm2"
echo "TODO: download toolbar plugin: -- https://github.com/iglance/iGlance"
echo "TODO: download ShiftIt -- https://github.com/fikovnik/ShiftIt"
echo "TODO: download go2shell -- https://github.com/Breathleas/Go2Shell"

