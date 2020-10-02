# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Custom Aliases
alias ytplaylist='youtube-dl --ignore-errors --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0 --output "%(title)s.%(ext)s"'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --output "%(title)s.(ext)s"'
alias update-pacman='sudo pacman -Syu'
alias yay='yay --aur --nodiffmenu'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Autocomplete
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


