{ pkgs, ... }:

{
  home.packages = [ pkgs.zsh pkgs.git pkgs.fzf pkgs.zoxide ];

  programs.zsh = {
    enable = true;

    # Configuración personalizada de .zshrc
    initContent = ''

      ZINIT_HOME=$HOME/.zsh/zinit

      if [ ! -d $ZINIT_HOME ]; then
        git clone https://github.com/zdharma-continuum/zinit "$ZINIT_HOME"
      fi

      source $ZINIT_HOME/zinit.zsh

      zinit ice depth=1; zinit light romkatv/powerlevel10k

      zinit light zsh-users/zsh-syntax-highlighting
      zinit light zsh-users/zsh-completions
      zinit light zsh-users/zsh-autosuggestions
      zinit light Aloxaf/fzf-tab

      autoload -U compinit && compinit

      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

      bindkey -v

      HISTSIZE=10000
      HISTFILE=~/.zsh/history
      SAVEHIST=10000
      HISTDUP=erase
      setopt appendhistory
      setopt sharehistory
      setopt hist_ignore_space
      setopt hist_ignore_all_dups
      setopt hist_save_no_dups
      setopt hist_ignore_dups
      setopt hist_find_no_dups

      zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"
      zstyle ":completion:*" menu no
      zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

      zinit snippet OMZP::git
      zinit snippet OMZP::sudo
      zinit snippet OMZP::archlinux
      zinit snippet OMZP::ssh

      alias ls='ls -F --color=auto'
      alias l='ls -la --color=auto'
      alias vi='nvim'
      alias vim='nvim'
      alias v='nvim'
      alias clear-pacman='sudo rm /var/lib/pacman/db.lck'
      alias suck="cd ~/.suckless/dwm && vim config.h && sudo make clean install && cd ~"

      eval "$(fzf --zsh)"
      eval "$(zoxide init --cmd cd zsh)"

      export QT_QPA_PLATFORM=xcb
      export QT_STYLE_OVERRIDE=gtk
      export QT_AUTO_SCREEN_SCALE_FACTOR=1


      [[ ! -f ~/.config/home-manager/modules/dotfiles/.p10k.zsh ]] || source ~/.config/home-manager/modules/dotfiles/.p10k.zsh
    '';
  };
}
