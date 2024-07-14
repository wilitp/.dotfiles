
#Alias mios
alias l="ls -CF"
alias la="ls -A"
alias ll="ls -alF"
alias gfa="git fetch --all --tags --jobs=10"
alias haskell-language-server="haskell-language-server-9.4.4"

alias dn='dotnet'
alias dc='docker compose'
alias dclogs='docker compose logs --tail 20 -f'
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
alias omxstaging2="ssh -a staging@200.58.98.63 -p 5557 -L 8015:127.0.0.1:8005 -L 8013:127.0.0.1:8003 -L 9015:127.0.0.1:9005 -L 9013:127.0.0.1:9003"
alias omxbccba="ssh -i ~/.ssh/bcc-clima-vm-prd fferraro@bcc-clima-prd.eastus2.cloudapp.azure.com"
alias omxnew="ssh -p 5942 omixom@vps-1527284-x.dattaweb.com -i .ssh/id_rsa -L 9017:127.0.0.1:9017"

alias prenota="ssh prenotadev@181.13.244.221 -p 5700 -i ~/.ssh/id_rsa -L 5555:localhost:5555" 

# utilities

alias j='cd $(find . -type d -print | fzf)'

alias limitmem='systemd-run --scope -p MemoryMax=1.5G --user '
