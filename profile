export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/Projects/scripts"
export PATH=$PATH:/usr/local/sbin
source $HOME/.golangrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#source ~/.gitprompt
source ~/.prompt

alias gst="git status"
alias gc="git commit -m"
alias gs="git stash"
alias gsp="git stash pop"
alias gco="git checkout"
alias gb="git branch"
alias ga="git add"
alias gpl="git pull --rebase"
alias gd="git diff"
alias grh="git reset HEAD"
alias gl="git log --oneline --decorate"
alias cdp="cd ~/Projects/"
alias md="cd ~/Projects/mdlive"
alias st="cd ~/Projects/stern"
alias fr="cd ~/Projects/Fore"
alias pp="cd ~/Projects/patient-portal"
alias ls="ls -G -al"
alias t="tmux"
alias log="tail -f log/development.log"
alias root="cd ~/../../../"
alias notes="cd ~/notes"
alias nx="sudo nginx"
alias nxs="sudo nginx -s stop"
alias b="bundle"
alias vi="vim"
alias mysql="mysql -uroot"
alias rc="rails c"
alias dm="eval "'"$(docker-machine env mdlive)"'""

update-docker-host(){
  sudo sed -i '' '/[[:space:]]docker\.local$/d' /etc/hosts

  export DOCKER_IP="$(echo ${DOCKER_HOST} | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')"

  [[ -n $DOCKER_IP ]] && sudo /bin/bash -c "echo \"${DOCKER_IP}    docker.local\" >> /etc/hosts"
}

function rmi-docker() {
  docker images -q --filter 'dangling=true' | xargs docker rmi
}

function drop-containers() {
  docker ps -aq | xargs docker rm -fv
}

function stopdrop-containers() {
  docker ps -a | grep Exited | awk '{print  $1}' | xargs docker rm -fv
}

function drop-volumes() {
  docker volume ls -qf dangling=true | xargs docker volume rm
}

function linux-game() {
  ssh bandit"$1"@bandit.labs.overthewire.org
}
