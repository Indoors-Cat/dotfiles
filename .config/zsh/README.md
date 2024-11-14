# Requirements:
- This configuration expects `nvim` to be installed. If you are using `vim` instead make sure to make adjustments to both the *sehll editor* as well as the *manpager*. 

- This configuration file expected there to be certain plugins installed into the `$HOME/.config/zsh/` directory: 
  - ZSH-Auto-Notify
  - ZSH Auto Suggestions
  - ZSH-History-Substring-Search:
  - ZSH Syntax Highlighting
  - ZSH-You-Should-Use
  - Spaceship Prompt

## Installing Plugins:

### ZSH-Auto-Notify
```shell
cd $HOME/.config/zsh/
git clone https://github.com/MichaelAquilina/zsh-auto-notify.git
```

### ZSH-Auto-Suggestions
```shell
cd $HOME/.config/zsh/
git clone https://github.com/zsh-users/zsh-autosuggestions
```

### ZSH-History-Substring-Search:
```shell
cd $HOME/.config/zsh/
git clone https://github.com/zsh-users/zsh-history-substring-search.git
```

### ZSH-You-Should-Use
```shell
cd $HOME/.config/zsh/
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git
```

### Spaceship Prompt
```shell
cd $HOME/.config/zsh/
git clone https://github.com/spaceship-prompt/spaceship-prompt.git

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts && ./install.sh
cd .. && rm -rf fonts/
```