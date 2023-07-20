CACHE_FOLDER="/trunk/nan"
CONDA_DOWNLOAD_LINK="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
CONFIG_FOLDER="~/will-config"



cp ${CONFIG_FOLDER/.vimrc} ~
cp ${CONFIG_FOLDER/.aliases} ~
# Install Oh My ZSH
yes | sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# install p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
## set ZSH_THEME="powerlevel10k/powerlevel10k"
## add line `source ~/.aliases`

# install zsh plugins
## install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
### plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

## install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Miniconda
cd $CACHE_FOLDER
wget $CONDA_DOWNLOAD_LINK
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
# remember to install the miniconda3 to $(CACHE_FOLDER/miniconda3)
