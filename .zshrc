# # Option for something like 'rm -r !("delete-all-but-this.txt")' to work
# setopt no_bare_glob_qual
alias dn='dotnet'
alias dc='docker compose'
alias newCPP='sh $HOME/.scripts/newCPP/newCPP.sh'
alias reactComponent='sh $HOME/.scripts/reactComponent/reactComponent.sh'
#alias python='python3'
alias pip='pip3'
alias dj='python manage.py'
alias rust='rustup'
alias integra='gcloud beta compute ssh --zone "southamerica-east1-b" "integra-cms" --project "integra-274519"'
alias rn='npx react-native'
alias scrcpy=' ADB=$HOME/Android/Sdk/platform-tools/adb scrcpy'
alias virtualenv='python3 -m venv'
alias vim="nvim"

# tmux aliases
alias rpanex='tmux resize-pane -x'
alias rpaney='tmux resize-pane -y'

# Copy from windows clipboard
alias pastewin="powershell.exe Get-Clipboard"

# Git aliases
alias gfa="git fetch --all --tags"
alias gff="git merge --ff-only"
alias gnff="git merge --no-ff"
alias gs="git status"
alias git-conflicts="grep -L '<<<<' *(.)"


# ssh
alias omxstaging="ssh -a fran@66.97.36.45 -p 5262 -L 8015:127.0.0.1:8005 -L 8013:127.0.0.1:8003 -L 9015:127.0.0.1:9005 -L 9013:127.0.0.1:9003"
alias omxstaging2="ssh -a fran@200.58.98.63 -p 5557 -L 8015:127.0.0.1:8005 -L 8013:127.0.0.1:8003 -L 9015:127.0.0.1:9005 -L 9013:127.0.0.1:9003"
# alias omxstaging="ssh -a fran@66.97.34.242 -p 5262 -L 8015:127.0.0.1:8005 -L 8013:127.0.0.1:8003 -L 9015:127.0.0.1:9005 -L 9013:127.0.0.1:9003"


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Golang env variables
export GOBIN="/home/guille/go/bin"
export GOPATH="/home/guille/go/"
export GOROOT="/usr/local/go/"

# Path to your oh-my-zsh installation.
export ZSH="/home/guille/.oh-my-zsh"
export FZF_DEFAULT_COMMAND="fdfind --type f --hidden --follow --exclude .git --exclude node_modules"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#ZSH_THEME="robbyrussell"
ZSH_THEME="clean"

# File listing aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories # much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_HOME=$HOME/Android/Sdk
export DENO_INSTALL="/home/guille/.deno"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/guille/go/bin
export PATH=$PATH:$DENO_INSTALL/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/haskell-server
export PATH=$PATH:$HOME/.win32yank


source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='nvim'

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/home/guille'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET
