# My configuration file for the Bourne Again(Bash) Shell:

##################################################
# If not running interactively, don't do anything:
##################################################
case $- in
	*i*) ;;
	*) return;;
esac

###################
# The Shell Prompt:
###################
### Built-in:
export PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;134m\]\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\W\[$(tput sgr0)\]\\$\[$(tput sgr0)\]"
### Starship Prompt:
#eval "$(starship init bash)"
#export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

###############
# Shell Editor:
###############
export EDITOR="vim"                             #Set SHELL Editor to use Vim
#export EDITOR="nvim"                           #Set SHELL Editor to use Neovim
#export VISUAL="emacsclient -c -a emacs"        #Set SHELL Visual Editor to GUI Emacs

###################
# Setting Manpager: (Only uncomment a single option)
###################
### Set Manpager as 'bat'
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
### Set Mangpager as 'vim'
export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'
### Set Manpager as 'nvim'
# export MANPAGER="nvim -c 'set ft=man' -"                      #Set Manpager of 'nvim'

#############################
# Shell History File Options:
#############################
export HISTCONTROL=ignoreboth:erasedups         #Ignore duplicate entries in history file
HISTFILE=~/.config/bash/histfile                #Setting custom history file path (Usually in $HOME)
HISTTIMEFORMAT="$F $T"                          #Setting timestamps for history file
HISTSIZE=10000                                  #Setting number of commands to save in history file
SAVEHIST=20000                                  #Max size of history file
PROMPT_COMMAND='history -a'                     #Add commands to history file immediately

################
# Shopt Options:
################
shopt -s autocd                                 #Enables changing to named directory without 'cd'
shopt -s cdspell                                #Enables mild autocorrection & spellcheck
shopt -s cmdhist                                #Save multi-line commands as single line
shopt -s dotglob                                #Includes '.' filenames in expansion
shopt -s expand_aliases                         #Expand $USER aliases to show full command
shopt -s histappend                             #This will append the history file instead of overwrite it

###############
# Setting Path:
###############
### Adding location for local scripts folder
export PATH="$HOME/.local/bin/:$PATH"
### Adding Rust Directory:
#source "$HOME/.cargo/env"

###############
# General/Misc:
###############
### Aliases:
source ~/.config/bash/bash_aliases              #Setting location for aliases file
source ~/.config/bash/inputrc                   #Setting location for inputrc file
#set -o vi                                      #Enable Vi mode
### Neofetch on Start:
#neofetch
#neofetch --ascii_distro debian			        #Enable Neofetch upon opening with Debian logo

###################################
# Kitty Terminal Shell Integration:
###################################
#if test -n "$KITTY_INSTALLATION_DIR"; then
#    export KITTY_SHELL_INTEGRATION="enabled"
#    source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
#fi

############
# Functions:
############
### Extract:(syntax is "extract <file>")
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1 && cd $(echo $1 | sed 's/.tar.bz2//')    ;;
           *.tar.gz)    tar xvzf $1 && cd $(echo $1 | sed 's/.tar.gz//')    ;;
           *.bz2)       bunzip2 $1 && cd $(echo $1 | sed 's/.bz2//')    ;;
           *.rar)       unrar x $1 && cd $(echo $1 | sed 's/.rar//')    ;;
           *.gz)        gunzip $1 && cd $(echo $1 | sed 's/.gz//')    ;;
           *.tar)       tar xvf $1 && cd $(echo $1 | sed 's/.tar//')    ;;
           *.tbz2)      tar xvjf $1 && cd $(echo $1 | sed 's/.tbz2//')    ;;
           *.tgz)       tar xvzf $1 && cd $(echo $1 | sed 's/.tgz//')    ;;
           *.zip)       unzip $1 && cd $(echo $1 | sed 's/.zip//')    ;;
           *.Z)         uncompress $1 && cd $(echo $1 | sed 's/.Z//')    ;;
           *.7z)        7z x $1 && cd $(echo $1 | sed 's/.7z//')    ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

### Change List:(Change directory and list contents)
cl() {
    local dir="$1"
    local dir="${dir:=$HOME}"
    if [[ -d "$dir" ]]; then
        cd "$dir" >/dev/null; ls -lah
    else
        echo "bash: cl: $dir: Directory not found"
    fi
}