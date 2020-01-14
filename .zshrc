export TERM="xterm-256color"

autoload -Uz compinit
compinit

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

source $(brew --prefix)/share/antigen/antigen.zsh

######################################################################
### install some antigen bundles
antigen use oh-my-zsh

# Guess what to install when running an unknown command.
antigen bundle command-not-found

# Helper for extracting different types of archives.
antigen bundle extract

# suggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# Syntax highlighting on the readline
antigen bundle zsh-users/zsh-syntax-highlighting

# colors for all files!
antigen bundle trapd00r/zsh-syntax-highlighting-filetypes

antigen bundle docker

antigen bundle docker-compose

antigen bundle iterm2

antigen bundle kubectl

antigen bundle ansible

antigen bundle colorize

antigen bundle git

#antigen theme benniemosher/the-one-theme
#antigen theme avit
antigen theme akz92/clean

antigen apply

source ~/.aliases
source ~/.iterm2_shell_integration.zsh
source ~/.env
