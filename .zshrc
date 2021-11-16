zmodload zsh/zprof

source ~/.zprofile

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

## powerlevel9k
# left
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable vcs)
# right
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time background_jobs ram load battery time)

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}❱%F{cyan}❱%F{073}❱%F{109}❱%f "
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# color
POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='lightgrey'
#
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="white"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="white"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="white"
# Colorize only the visual identifier
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"

# battery
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='black'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='001'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='black'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='076'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='black'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='076'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='black'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='003'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=15
POWERLEVEL9K_BATTERY_VERBOSE=false

# POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d/%m/%y}"
POWERLEVEL9K_TIME_BACKGROUND='white'
#####

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable the update prompt.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(
    git
    docker
    docker-compose
    gitignore
    nmap
    macos
    tmux
    rsync
    extract
    jsontools
    autojump
    # ZSH
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# zstyle ':bracketed-paste-magic' active-widgets '.self-*'

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# Start autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

### User configuration ###

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source ~/.config/os-specific.sh

export TERM="xterm-256color"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#export LC_ALL=zh_TW.UTF-8
#export LANG=zh_TW.UTF-8

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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### PATH ###
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/roy4801/bin:$PATH"

# coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
#
export PATH="/Applications/Wine Stable.app/Contents/Resources/start/bin:/Applications/Wine Stable.app/Contents/Resources/wine/bin:$PATH"
#
# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

export HOMEBREW_GITHUB_API_TOKEN="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"
export VITASDK=/usr/local/vitasdk
export PATH=$VITASDK/bin:$PATH 	   # add vitasdk tool to $PATH
export OJ_BLOG_GITHUB_TOKEN="cd2115f30c228b0eb8b16e5964206b4c5367ac17"

### User settings ###
alias ll='ls -lhF'
alias lla='ls -alhF'
alias la='ls -Ah'
alias l='ls -CFh'

alias py="python3"
alias py2="python"
alias py3="python3"
alias pip="pip3"
alias finder="open -a 'Finder'"
alias macdown="open -a 'MacDown'"
alias ida="open -a ida.app"
alias ida64="open -a ida64.app"
alias hopper="'/Applications/Hopper Disassembler v4.app/Contents/MacOS/hopper'"
alias fixntfs="diskutil eject /dev/disk2 && sudo ezntfs all"

alias udemy-dl="py /Users/roy4801/github/udemy-dl/udemy-dl.py -u a82611141@gmail.com -p s82611141"
alias pixiv-dl=""
alias rsync="rsync --exclude '*.DS_Store' --iconv=utf-8-mac,utf-8"
alias rcp="rsync -avzh --exclude '*.DS_Store' --iconv=utf-8-mac,utf-8"

alias src="omz reload" # remove zsh-reload

function imgup() {
	imgur-uploader "$1"
}
function imgupd() {
    imgup "$1"
    rm -f "$1"
}

function pwnbox() {
    help_msg=$(cat <<'END_HEREDOC'
Usage: pwnbox <commands> <path>
    up c <path>    Create a pwnbox (default path '.')
    down            Destroy a pwnbox
    conn            Connect to the pwnbox
END_HEREDOC
)

    [[ -z "$1" || "$1" == "-h" || "$1" == "--help" || "$2" == "-h" || "$2" == "--help" || "$3" == "-h" || "$3" == "--help" ]] && echo $help_msg && return 1
    [[ "`where docker`" == "docker not found" ]] && echo "Plz install docker" && return 1

    case "$1" in
        u*)
            [[ "$2" == "c" || "$2" == "conn" ]] && conn_flag=1 || conn_flag=0
            [[ $conn_flag -eq 1 ]] && docker_mount=$(pwd)/${3} || docker_mount=$(pwd)/${2}
            echo $docker_mount
            docker run -d \
                --rm  \
                -h "pwn_box" \
                --name "pwn_box" \
                -v ${docker_mount}:/ctf/work \
                -p 23946:23946 \
                --cap-add=SYS_PTRACE \
                skysider/pwndocker
            [[ $conn_flag -eq 1 ]] && docker exec -it pwn_box /bin/bash
        ;;
        d*)
            docker kill pwn_box
        ;;
        c*)
            docker exec -it pwn_box /bin/bash
        ;;
        *)
            echo $help_msg
        ;;
    esac
}

function burp() {
    [ ! `uname | grep Darwin` ] && echo "You are not using mac" && return 1
	pushd /Users/roy4801/Desktop/Cybersecurity/tools/BurpSuitePro-Keygen/ > /dev/null
	/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home/bin/java -jar -Xbootclasspath/p:BurpKeygen.jar -jar burpsuite_pro_v2.0.06beta.jar &
	popd > /dev/null
    return 0
}

function togif() {
    ffmpeg -i $1 -pix_fmt rgb24 $1.gif
}

function uva() {
    wget --no-check-certificate -P /tmp https://onlinejudge.org/external/$1/$2.pdf
    open /tmp/$2.pdf
}

function cpf() {
	if [[ "$2" != "" ]]; then
		FONT_SIZE=$2
    else
		FONT_SIZE=20
	fi
	highlight -O rtf $1 -K $FONT_SIZE -k "Source Code Pro for Powerline" --style nightshimmer | pbcopy
}

alias ghidra="ghidraRun"

# added by travis gem
[ -f /Users/roy4801/.travis/travis.sh ] && source /Users/roy4801/.travis/travis.sh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `userpath` on 2021-02-07 02:03:54
export PATH="$PATH:/Users/roy4801/.local/bin"
