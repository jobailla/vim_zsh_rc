# Set Homebrew temporary folders
 export HOMEBREW_CACHE=/tmp/$USER/Homebrew/Caches
 export HOMEBREW_TEMP=/tmp/$USER/Homebrew/Temp
 export HOMEBREW_LOCKS=/tmp/$USER/Homebrew/Locks
 mkdir -p $HOMEBREW_CACHE
 mkdir -p $HOMEBREW_TEMP
# # # Create symlink for Locks folder
 rm -rf $HOME/.brew/Library/Locks
 mkdir -p $HOMEBREW_LOCKS
 ln -s /tmp/$USER/Homebrew/Locks $HOME/.brew/Library/Locks
 export PATH=$HOME/.brew/bin:$PATH

#   foreground       backgroung  # color
#   # '\[\033[m\]'# all plain
#   # '\[\033[30m\]'   '\[\033[40m\]'# black
#   # '\[\033[31m\]'   '\[\033[41m\]'# red
#   # '\[\033[32m\]'   '\[\033[42m\]'# green
#   # '\[\033[33m\]'   '\[\033[43m\]'# yellow
#   # '\[\033[34m\]'   '\[\033[44m\]'# blue
#   # '\[\033[35m\]'   '\[\033[45m\]'# purple
#   # '\[\033[36m\]'   '\[\033[46m\]'# cyan
#   # '\[\033[37m\]'   '\[\033[47m\]'# white
#    
#    # md begin blinking
#     
#     # mb begin bold
#     # me end mode
#     # se end standout-mode
#     # so begin standout-mode - info box
#     # ue end underline
#     # us begin underline

man() {
	env \
		LESS_TERMCAP_mb=$'\E[01;31m' \
		LESS_TERMCAP_md=$'\E[01;38;5;74m' \
		LESS_TERMCAP_me=$'\E[0m' \
		LESS_TERMCAP_se=$'\E[0m' \
		LESS_TERMCAP_so=$'\E[1;44;33m' \
		LESS_TERMCAP_ue=$'\E[0m' \
		LESS_TERMCAP_us=$'\E[04;38;5;146m' \
		man "$@"
}

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
plugins=(zsh-autosuggestions)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jobailla/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="geoffgarside"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /Users/jobailla/.Sublivim/sublivimrc.sh

alias wcc="gcc -Wall -Werror -Wextra"
alias norme="norminette -R CheckForbiddenSourceHeader"
alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background"
alias emacs="vi"
alias 42FC="sh ~/github/42FileChecker/42FileChecker.sh"
alias k="l"
