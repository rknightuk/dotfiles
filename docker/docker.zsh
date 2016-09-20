alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcb="docker-compose build"
alias dcd="docker-compose down"
alias dcs="docker-compose stop"
alias dce="docker-compose exec"

# Delete all containers
alias drm="docker rm $(docker ps -a -q)"

# Delete all images
alias dri="docker rmi $(docker ps -a -q)"

# Bash
alias dbash="docker exec -it $(docker ps -aqf "name=$1") bash"
