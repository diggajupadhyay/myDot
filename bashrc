# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
alias docker=podman
alias centserver="ssh digup@192.168.1.135"
alias upgrade_sys="sudo dnf upgrade -y && flatpak upgrade -y"
alias ytmp3="cd $HOME/Music && youtube-dl --extract-audio --audio-format mp3 "
alias debian_server="ssh -X root@139.59.120.116"
alias twserver="ssh digup@192.168.1.103"
alias code="flatpak run com.visualstudio.code"


# android-tools
export PATH=$PATH:$HOME"/platform-tools"
export ANDROID_HOME=/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

