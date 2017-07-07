export PATH="$PATH:$HOME/Projects/scripts"
export PATH="$PATH:$HOME/go/bin"
export PATH=$PATH:/usr/local/sbin
export GOPATH="${HOME}/go"
export AWS_DEFAULT_PROFILE="lenguti"
export AWS_PROFILE="lenguti"
export AWS_DEFAULT_REGION="us-east-1"
export AWS_REGION="us-east-1"
export SWAPEX_ENVIRONMENT="lenguti"
export NOTES_PATH="/Users/lgutierrez/notes"
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

source ~/.prompt

alias gst="git status"
alias gc="git commit -m"
alias gs="git stash"
alias gsp="git stash pop"
alias gco="git checkout"
alias gb="git branch"
alias ga="git add"
alias gpl="git pull origin"
alias gd="git diff"
alias gl="git log --oneline --decorate"
alias cdp="cd ~/Projects/"
alias ls="ls -G -al"
alias t="tmux"
alias notes="cd ~/notes"
alias vi="vim"
alias gome="cd ~/go"
alias gop="cd ~/go/src/bitbucket.org/mlcloud/"
alias got="go test"
alias gotc="go test --cover"
alias gor="go run"
