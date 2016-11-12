export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
# Note: needs meslo LG with powerline TODO: link

# Completion
# CASE_SENSITIVE="true"
# If case_sensitive is off, you can change:
# HYPHEN_INSENSITIVE="true"

export DISABLE_UPDATE_PROMPT="true"
# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=1
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
plugins=(git battery debian command-not-found common-aliases)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/android-studio/bin"
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias zshconfig='mate ~/.zshrc'
alias ohmyzsh='mate ~/.oh-my-zsh'

alias battp=battery_pct
alias batt=battery_pct_remaining
alias battt=battery_time_remaining
alias battprompt=battery_pct_prompt
alias bat=battery_level_gauge

# rm protection
alias rm='rm -I'

alias q='exit'
alias ipl='ip addr show | grep -o "192\.168\.0\.[1-9]*/" | sed s/.$//'
alias gsu='git submodule foreach git pull origin master'

run() {
    "$@" >/dev/null 2>&1 & disown
}

spacify() {
	rename 's/_/\ /g' *
}

push() {
	git add -A
	git commit -m $1
	git push -u origin $(git symbolic-ref HEAD | cut -d'/' -f3)
}

alias pull='git pull origin $(git symbolic-ref HEAD | cut -d"/" -f3)'

alias pls='TF_CMD=$(TF_ALIAS=pls PYTHONIOENCODING=utf-8 TF_SHELL_ALIASES=$(alias) thefuck $(fc -ln -1 | tail -n 1)) && eval $TF_CMD && print -s $TF_CMD'
alias n='node index.js'
alias hib='sudo pm-hibernate'
alias matlab='sudo bash ~/MatlabR2015a/bin/matlab'
alias common='history | awk '"'"'BEGIN {FS="[ \t]+|\\|"} {print $3}'"'"' | sort | uniq -c | sort -nr | head'
alias 'vivi'='vivaldi-snapshot --flag-switches-begin --debug-packed-apps --silent-debugger-extension-api --flag-switches-end'
alias ls='ls -F --color'
function pdf-fonts() {
	strings $1 | grep FontName | sed "s/\/FontName \/[A-Z]\+//" | sed "s/\\+//"
}

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# autoload -U colors && colors
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
