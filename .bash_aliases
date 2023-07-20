
# Color settings
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

function myhelp() {
	echo "####################################################"
	echo "# MY NICE LITTLE HELPERS"
	echo "####################################################"
	echo ""
	echo ""
	echo "====== AWS CLI HELPERS ======"
	echo -e " ${GREEN}ap${NC}              : aws configure list-profiles"
	echo -e " ${GREEN}awc${NC}             : echo \$AWS_PROFILE"
	echo -e " ${GREEN}aid${NC}          : aws sts get-caller-identity"
	echo ""
	echo ""
	echo "====== DOCKER HELPERS ======"
	echo -e " ${GREEN}dc${NC}              : docker-compose"
	echo -e " ${GREEN}di${NC}              : docker images --all"
	echo -e " ${GREEN}dps${NC}             : docker ps --all"
	echo -e " ${GREEN}dl${NC}              : docker logs"
	echo -e " ${GREEN}dlf${NC}             : docker logs -f"
	echo -e " ${GREEN}drpm${NC}            : docker rm"
	echo -e " ${GREEN}drminone${NC}        : delete dangling images"
	echo -e " ${GREEN}drmiexit${NC}        : delete exited containers"
	echo -e " ${GREEN}dclean${NC}          : kill all running containers"
	echo ""
	echo ""
	echo "====== GIT HELPERS ======"
	echo -e " ${GREEN}gs${NC}              : git status"
	echo -e " ${GREEN}gas${NC}             : git add -A && git status"
	echo -e " ${GREEN}gam${NC}             : git commit --amend --no-edit"
	echo -e " ${GREEN}gucm${NC}            : git remote update && git rebase origin/master"
	echo -e " ${GREEN}gl${NC}              : git log -n 20 --oneline --no-merges"
	echo -e " ${GREEN}gr${NC}              : git remote -v"
	echo -e " ${GREEN}gb${NC}              : it branch -av"
	echo ""
	echo ""
	echo "====== KUBERNETES HELPERS ======"
	echo -e " ${GREEN}k${NC}               : kubectl"
	echo -e " ${GREEN}kls${NC}             : k config get-contexts"
	echo -e " ${GREEN}kuc${NC}             : k config use-context"
	echo -e " ${GREEN}kns${NC}             : k config set-context --current --namespace"
	echo ""
	echo ""
	echo "====== OS HELPERS ======"
	echo -e " ${GREEN}mkcd${NC}            : Make a directory and CD into it"
	echo -e " ${GREEN}uports${NC}          : List open TCP ports"

}

## Docker access
alias dc="docker-compose"
alias di="docker images --all"
alias dps="docker ps --all"
alias dl="docker logs"
alias dlf="docker logs -f"
alias drpm="docker rm"
alias drminone='docker rmi $(docker images -qf dangling=true)' # Delete dangling images
alias drmiexit='docker rm $(docker ps -qaf status=exited)' # Delete exited containers
alias dclean='docker rm -f $(docker ps -aq)'


## AWS CLI
alias ap="aws configure list-profiles"
alias awc="echo $AWS_PROFILE"
alias aid="aws sts get-caller-identity"


# Git access
alias gs='git status'
alias gas='git add -A && git status'
alias gam='git commit --amend --no-edit'
alias gucm='git remote update && git rebase origin/master'
alias gl='git log -n 20 --oneline --no-merges'
alias gr='git remote -v'
alias gb='git branch -av'

# Kubectl Alias
alias k='kubectl'
alias kls='k config get-contexts'
alias kuc='k config use-context'
alias kns='k config set-context --current --namespace '

# OS
alias uports='lsof -nP -iTCP -sTCP:LISTEN'
