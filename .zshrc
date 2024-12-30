# source powerlevel10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# init nvm for autocompletions in nvim
source /usr/share/nvm/init-nvm.sh

### Aliases #####################################
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cdp='cd ~/projects'
alias ll='ls -all'
alias g='git'
alias v='nvim'
alias t='tmux new -As0'

### Plugins #####################################

# Use syntax highlighting
source $HOME/.zsh-addons/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use history substring search
source $HOME/.zsh-addons/zsh-history-substring-search/zsh-history-substring-search.zsh

# Auto suggestions
source $HOME/.zsh-addons/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# You should use
source $HOME/.zsh-addons/zsh-you-should-use/zsh-you-should-use.plugin.zsh

# Additional Completions
source $HOME/.zsh-addons/zsh-completions/zsh-completions.plugin.zsh


### Options #####################################

setopt correct_all              # Auto correct mistakes
setopt nocaseglob               # Case insensitive globbing
setopt rcexpandparam            # Array expension with parameters
setopt numericglobsort          # Sort filenames numerically when it makes sense
setopt nobeep
setopt auto_pushd
setopt pushd_minus
setopt notify
setopt menucomplete
setopt rm_star_silent
setopt appendhistory            # Immediately append history instead of overwriting
setopt histignorealldups        # If a new command is a duplicate, remove the older one
setopt hist_find_no_dups        # Do not display a line previously found.
setopt extendedhistory          # Write the history file in the ":start:elapsed;command" format.
setopt incappendhistory         # Write to the history file immediately, not when the shell exits.
setopt sharehistory             # Share history between all sessions.
setopt histexpiredupsfirst      # Expire duplicate entries first when trimming history.
setopt histignorespace          # Don't record an entry starting with a space. Useful for passwords
setopt histverify               # Don't execute immediately upon history expansion.
setopt autocd                   # if only directory path is entered, cd there.
setopt cdable_vars
setopt globdots
setopt prompt_subst

# Completions
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:directory-stack' list-colors '=(#b) #([0-9]#)*( *)==95=38;5;12'
zstyle ':completion:*' rehash true                              # automatically find new executables in path
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $TMPPREFIX/zcache
zstyle ':completion::complete:-tilde-::' group-order named-directories directory-stack users

# force filename completion
zle -C complete-files complete-word _generic
zstyle ':completion:complete-files:*' completer _files
bindkey '^xf' complete-files

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zhistory
WORDCHARS=${WORDCHARS//\/[&.;]}           # Don't consider certain characters part of the word

autoload -Uz compinit
compinit

### Key bindings ################################

bindkey '^[[H'      beginning-of-line               # HOME
bindkey '^[[F'      end-of-line                     # END
bindkey '[[2~'      overwrite-mode                  # INS
bindkey '^[[A'      history-substring-search-up     # UP
bindkey '^[[B'      history-substring-search-down   # DOWN
bindkey '^[[1;5C'   forward-word                    # Ctrl+Right
bindkey '^[[1;5D'   backward-word                   # Ctrl+Left


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

