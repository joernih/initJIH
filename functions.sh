#!/bin/bash
function sshc {
    local name=${1:-"joernih"}
    local ip=${2:-"8"}
    local port=${3:-"22"}
    ssh ${name}@192.168.0.${ip} -p ${port}
    #ssh joernih@192.168.0.8
}
function rnotb {
  local arg1=${1:-"hyp_paper.Rmd"}
  local arg2=${2:-"5000"}
  local arg3=${3:-$PWD}
  fuser -k $arg2/tcp
  Rscript -e "servr::httw()" -b -p$arg2 & disown
  while inotifywait -q -e modify "$arg3"
  do 
  	echo "file modified"
   	Rscript -e "rmarkdown::render('$arg1','html_document')"
  done
}
function drwa {
  sudo docker stop $(sudo docker images -q)
  sudo docker rm -vf $(sudo docker ps -a -q)
  sudo docker rmi $(sudo docker images -q)
  sudo docker container prune # Remove all stopped containers
  sudo docker image prune -a
}
function drbd {
    local arg1=${1:-$(basename $PWD)}  
    local arg2=${2:-$PWD}  
    sudo docker build \
    --no-cache \
    --build-arg GIT_PAT_H=${GIT_PAT_H} \
    --tag "$arg1" \
    --file "$arg2" \
    . #end here
}
function drrn {
    bnm=$(basename $PWD)
    port=$(echo ${bnm: -9} | sed 's/_/:/g')
    echo $port
    local arg1=${1:-$(basename $PWD)}  
    local arg2=${1:-$(basename $PWD)'abc'}  
    local arg3=${1:-$(basename $PWD)'abc'}  
    sudo docker run \
    --detach \
    -e PASSWORD=1234 \
    -p "$port" \
    --name "$arg2" \
    "$arg1" 
}
function drex {
    local arg1=${1:-$(basename $PWD)'abc'}  
    sudo docker \
    -it \
    "$arg1" \
    /bin/bash
}
function gpt {
    arg1=${1:-"Say: testing"}
    arg2=$(( ${2:-500} ))
    python3 $HOME/homepageJIH/initsetup/AI/askai.py "$arg1" "$arg2"
}
function gitp() {
	git add --all
	git commit -m "$1"
	git push
}
function gitpa() {
	git add --all
	git commit -m "$1"
	git push --recurse-submodules=on-demand
}
function j() {
	cd $(autojump $1)
}
function gf {
	google $1 & disown
}
function Rss {
  R -e "httpuv::runStaticServer(
    dir = .,
    port = 9090,
    browse = FALSE,
    headers = list(Access-Control-Allow-Origin =  '*')
  )"
}
function sgpt {
echo "$1" | chatgpt
}





