
#Alias mios
alias l="ls -CF"
alias la="ls -A"
alias ll="ls -alF"
alias gfa="git fetch --all --tags --jobs=10"


alias dn='dotnet'
alias dc='docker-compose'
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
