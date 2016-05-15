# Path to your oh-my-zsh installation.
export ZSH=/home/somebody/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
# Note: needs meslo: https://github.com/andreberg/Meslo-Font

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git battery debian command-not-found common-aliases)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconfig='mate ~/.zshrc'
alias ohmyzsh='mate ~/.oh-my-zsh'

# battery aliases - need acpi
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
alias gp='git push -u origin master'
alias gpl='git pull origin master'
alias hm='pypy ~/Programs/Hummingbird/hm2py.py'
cocoa() {
    gcc $1.m `gnustep-config –objc-flags` -lobjc -lgnustep-base -o $1
}

commit() {
	git add -A && git commit -m "$1" && git push -u origin
	if [ $# -eq 1 ]
	then
		git push -u origin master
	else
		git push -u origin $2
	fi
}
alias hib='sudo pm-hibernate'
alias chem='electron chemicals/chemical-core/run.js'
alias hmtest='pypy ~/Programs/Hummingbird/Hummingbird.py -p ~/Programs/Hummingbird/test.hm'
alias matlab='sudo bash ~/MatlabR2015a/bin/matlab'
alias brent='g++ -m64 -march=native -std=c++11 brent.cpp && ./a.out'
alias 'c-as'='~/opt/cross/bin/i686-elf-as'
alias 'c-gcc'='~/opt/cross/bin/i686-elf-gcc'
alias common='history | awk 'BEGIN {FS="[ \t]+|\\|"} {print $3}' | sort | uniq -c | sort -nr | head'
alias 'aos'='cd ~/AvocadOS
c-as kernel/boot.s -o kernel/boot.o
c-gcc -c kernel/kernel.c -o kernel/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
c-gcc -T kernel/linker.ld -o kernel/avocados.bin -ffreestanding -O2 -nostdlib kernel/boot.o kernel/kernel.o -lgcc
mkdir -p iso/boot/grub
sudo cp kernel/avocados.bin iso/boot/avocados.bin
sudo cp kernel/grub.cfg iso/boot/grub/grub.cfg
grub-mkrescue /usr/lib/grub/i386-pc -o avocados.iso iso
qemu-system-i386 -cdrom avocados.iso'
alias ls='ls -F --color'
function pdf-fonts() {
	strings $1 | grep FontName | sed "s/\/FontName \/[A-Z]\+//" | sed "s/\\+//"
}

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

export PATH=$PATH:/path/to/depot_tools

# autoload -U colors && colors
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
