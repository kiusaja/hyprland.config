
# The following lines were added by compinstall

export STARSHIP_CONFIG="/home/kiusaja/.config/starship.toml"

#zstyle ':completion:*' completer _complete _ignored _approximate
#zstyle ':completion:*' matcher-list '' '' '' 'r:|[._-]=** r:|=**'
#zstyle :compinstall filename '/home/kiusaja/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1500
SAVEHIST=10000
bindkey -e
eval "$(starship init zsh)"
export EDITOR=nvim
export VISUAL=nvim

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

fastfetch

# ls alias
alias ls='eza -a --icons --group-directories-first'
alias ll='eza -la --icons --octal-permissions --group-directories-first'
alias lt='eza -T --icons --group-directories-first'

alias gitpush='cd ~/kiusaja && git add . && git commit -m "Auto-Update Dotfiles" && git push && cd -'

alias kys='shutdown now'
