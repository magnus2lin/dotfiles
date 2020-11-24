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

#antigen bundle superbrothers/zsh-kubectl-prompt
#antigen bundle jonmosco/kube-ps1

antigen apply

source ~/.aliases
source ~/.iterm2_shell_integration.zsh
source ~/.env

export PATH="$(brew --prefix)/opt/python/libexec/bin:$(brew --prefix)/opt/make/libexec/gnubin:$PATH"
export LSCOLORS=ExGxFxdxCxDxDxhbadExEx
export LC_COLORS="di=1;34:ln=1;36:so=1;35:pi=33:ex=1;32:bd=1;33:cd=1;33:su=37;41:sg=30;43:tw=1;34:ow=1;34"
export CDPATH=.:~:~/Documents/projects/dt:~/Documents/projects/prv

export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

CERT_PATH=$(python -m certifi)
export SSL_CERT_FILE=${CERT_PATH}
export REQUESTS_CA_BUNDLE=${CERT_PATH}



gpgconf --launch gpg-agent
. "/Users/magthu/.acme.sh/acme.sh.env"
