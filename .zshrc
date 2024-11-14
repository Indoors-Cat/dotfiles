# The configuration file for the Z-Shell(ZSH):

###################
# The Shell Prompt:
###################
### Spaceship Prompt:
source ~/.config/zsh/zsh_spaceship
### Starship Prompt:
#eval "$(starship init zsh)"

###############
# Shell Editor:
###############
#export EDITOR="vim"                             #Set SHELL Editor to Vim
export EDITOR="nvim"                           #Set SHELL Editor to Neovim
#export VISUAL="emacsclient -c -a emacs"        #Set SHELL Visual Editor to GUI Emacs

###################
# Setting Manpager: (Only uncomment a single option)
###################
### Set Manpager as 'bat'
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
### Set Manpager as 'vim'
# export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'
### Set Manpager as 'nvim'
export MANPAGER="nvim -c 'set ft=man' -"

#############################
# Shell History File Options:
#############################
HISTFILE=~/.config/zsh/histfile                 #Setting custom history file path (Usually in $HOME)
HISTSIZE=10000                                  #Setting number of commands to save in history file
SAVEHIST=20000                                  #Max size of history file

#################
# Setopt Options:
#################
setopt autocd                                   #Enabled changing to named directory without 'cd'
setopt autolist                                 #Automatically list choices on ambiguous completion
unsetopt beep                                   #No beep on error in ZLE
setopt extendedglob                             #Treat '#', '~', & '^' as part of patterns for filenames
setopt histignoredups                           #Do not add duplicate sequential entries to histfile
setopt histignorespace                          #Ignore commands where first character is a space
setopt inc_append_history_time                  #Write out history when command is finished with timestamps
setopt notify                                   #Report status of background jobs immediately
setopt nomatch

###############
# Setting Path:
###############
export PATH
### Adding location for local scripts folder
path=($HOME/.local/bin/ $path)                #Setting location for scripts folder
### Adding Rust Path:
#source "$HOME/.cargo/env"			#Setting location for Rust env

###############
# General/Misc:
###############
### Aliases:
source ~/.config/zsh/zsh_aliases                #Setting location for aliases file
### Neofetch on Start:
#neofetch					#Enable Neofetch upon opening
#neofetch --ascii_distro macos			#Enable Neofetch upon opening with MacOS logo

##############
# Keybindings:
##############
bindkey '^[[A' history-substring-search-up     #Used for ZSH-History-Substring-Search
bindkey '^[[B' history-substring-search-down   #Used for ZSH-History-Substring-Search

###################
# Sourcing Plugins:
###################
### ZSH-Auto-Notify:
source ~/.config/zsh/zsh-auto-notify/auto-notify.plugin.zsh

### ZSH Auto-suggestions:
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

### ZSH-History-Substring-Search:
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

### ZSH Syntax Highlighting:
source .config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### ZSH-You-Should-Use:
source ~/.config/zsh/zsh-you-should-use/you-should-use.plugin.zsh


###################################
# Kitty Terminal Shell Integration:
###################################
#if test -n "$KITTY_INSTALLATION_DIR"; then
#    export KITTY_SHELL_INTEGRATION="enabled"
#    autoload -Uz -- "$KITTY_INSTALLATION_DIR"/shell-integration/zsh/kitty-integration
#    kitty-integration
#    unfunction kitty-integration
#fi