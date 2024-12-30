# Dotfiles

## Setup ZSH

Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k) and clone zsh Plugins

    git clone https://github.com/MichaelAquilina/zsh-you-should-use.git .zsh-addons/zsh-you-should-use
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh-addons/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-history-substring-search.git $HOME/.zsh-addons/zsh-history-substring-search
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.zsh-addons/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-completions.git $HOME/.zsh-addons/zsh-completions

Copy .zshrc and powerlevel config

    cp .zshrc $HOME/.zshrc
    cp .p10k.zsh $HOME/.p10k.zsh


## Setup Neovim

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cp init.vim $HOME/.config/nvim
    cp .p10k.zsh $HOME/.p10k.zsh

Install Plugins

    :PluginInstall
    :call mkdp#util#install()

Install [coc](https://github.com/neoclide/coc.nvim) and required languages for coc

