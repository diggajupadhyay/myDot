# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/digup/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/go/bin

# alias ohmyzsh="mate ~/.oh-my-zsh"
alias uptime="uptime -p | sed 's/up //'"
alias created="sudo tune2fs -l /dev/sda2 | grep created"
alias yt-music="youtube-dl --no-playlist --audio-format mp3 --extract-audio" 
alias youtube-video="youtube-dl -f '(bestvideo/best)[protocol^=http]'"
alias upgrade_sys="sudo dnf upgrade -y && flatpak upgrade -y"
alias docker="podman"

# This is a cool zsh plugin called 10k powerline. to configure just type p10k configure
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
