# Init
alias upds='source /home/joernihJIH/Init/init.sh' 
alias nvd="nvim -u $HOME/InitJIH/config/nvim/init.vim"
alias nvc="nvim $HOME/InitJIH/README.md -u $HOME/InitJIH/config/nvim/init.vim"
alias t='tmux'
alias z='zellij'
alias v='nvim'
alias r='ranger'
alias c='clear'
alias h='history'
alias qr='quarto render . & disown'
alias qp='quarto preview . & disown'

## Screen

# alias teDRL='xrandr --output DP-2 --rotate left'
# alias teON='xrandr --output eDP-1 --auto'
# alias teOFF='xrandr --output eDP-1 --off'
# #alias teHK='xrandr --output DP-2-1 --rotate right'
# alias teHK='xrandr --output HDMI-2 --rotate left'
# alias teSP='xrandr --output DP-2 --rotate left'
# alias teHKOFF='teOFF; teHK'
# alias teSPOFF='teOFF; teSP'
# alias teRL='xrandr --output eDP-1 --rotate left'
# 
# alias scr_dup='xrandr --output DP-1 --same-as eDP-1'
# alias ncd='cd $HOME/teaching/Template/SFB10816_Mikro_Plates/eksamen'
# 
# ## General
alias okindle='brave https://read.amazon.com & disown' 
# 
# alias ed='brave https://www.elitesingles.no/client/messages'
# 
# ## Remote access
# alias cmob='nmcli d wifi connect 108109 password hyuk2603' # Mobil
# alias cmob1='nmcli d wifi connect 108109 password hyuk2603' # Mobil
# 
# alias char='nmcli d wifi connect Get-4A9A53 password ednmwyyazy' # Harbitzalleen
# alias csju='nmcli d wifi connect Telia-3E5290 password rYrGMGe9GTYs' # Harbitzalleen
# 
# ## Admin and tasks 
# alias ot='cd $HOME/homepageJIH; nvim index.Rmd'
# alias r2='cd $HOME/research/ModernMonetaryMacro; nvim index.Rmd'
# alias r0='cd $HOME/research/ManifoldDestiny/; nvim index.Rmd'
# alias rd='cd $HOME/homepageJIH/nonpublic/Document; nvim index.Rmd'
# 
# ## Teaching
# alias t1='cd $HOME/teaching/SFB30820Finansteori; nvim index.Rmd'
# alias t2='cd $HOME/teaching/BOEA203Mikrooekonomi; nvim index.Rmd'
# alias t2g='cd $HOME/teaching/OEKA201/gitclones'
# alias t3='cd $HOME/teaching/SFB10816Mikrooekonomi/; nvim index.Rmd'
# alias t4='cd $HOME/teaching/OEKA201Programming; nvim index.Rmd'
# alias t5='cd $HOME/teaching/IKT/index.qmd '
# 
# ## Others
# alias pi='cd $HOME/homepageJIH/initsetup'
# alias e1='vim $HOME/homepageJIH/nonpublic/egen/wcs/Semesterplan2020V.org'
# 
# ## Open files
# alias oaf='cd $HOME/homepageJIH/initsetup/; nvim -o alias_jih.sh functions_jih.sh'
# alias oa='cd $HOME/homepageJIH/initsetup/; nvim -p alias_jih.sh; alias_utv_jih.sh'
# alias oa='cd $HOME/homepageJIH/initsetup/; nvim -p alias_jih.sh; alias_utv_jih.sh'
# alias oq='nvim $HOME/homepageJIH/initsetup/config/qtile/config.py'
# alias oc='cd ~/ ; nvim -p .bashrc .zshrc .zprofile .vimrc .tmux.conf ~/.config/nvim/init.vim; ~/.config/ranger/rc.conf ~/.config/ranger/rifle.conf'
# alias ov='cd ~/ ; nvim -o .vimrc homepageJIH/initsetup/vim/sourced/plugins.vim homepageJIH/initsetup/vim/sourced/functions.vim homepageJIH/initsetup/vim/sourced/keybindings.vim'
# alias ok='nvim -o $HOME/.config/kitty/kitty.conf'
# alias gc='git config credential.helper 'cache --timeout=3600000''
# alias tt='ttyd -p 8080 bash -x'
# 
# 
# ## Two characters
# alias vs='vim -S abc.vim'
# alias sb='source ~/.bashrc'
# alias sz='source ~/.zshrc'
# alias c.='cd $HOME'
# alias hn='hostname'
# 
# ### Three characters
# alias cal='cal -y -w -m'
# 
# ### Others
# alias nomachine='/usr/NX/bin/nxplayer & disown' #for the program itself
# alias nomachines='/usr/NX/bin/nxclient -admin & disown' #– for the “service” monitor
# ### Commands
# alias cpwd='pwd | xsel -b' 
# ###################################
# alias on='vim $HOME/.config/gtk-3.0/bookmarks'
# alias tm='git checkout $(git log --pretty=format:"%h%x09%an%x09%ad%x09%s" | fzf | cut -c 1-8)'
# alias of='nvim $HOME/homepageJIH/initsetup/functions_jih.sh'
# ###################################
# alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
# alias nvd="nvim -u $HOME/homepageJIH/initsetup/config/nvim/vim/initV.vim"
# alias nvh="nvim -u $HOME/homepageJIH/initsetup/config/nvim/vim/initV.vim /home/joernih/homepageJIH/_quarto.yml"
# alias nvl="nvim -u $HOME/homepageJIH/initsetup/config/nvim/lua/initL.lua"
# alias nvq="nvim -u $HOME/homepageJIH/initsetup/config/nvim/qrt/initQ.lua"
# alias bdR='R CMD INSTALL --preclean --no-multiarch --with-keep.source .'
# alias ql='ls *.qmd'
# alias gcm='git checkout main'
# #### Three character
# alias ipe='curl ifconfig.me'
# alias ipi="ip a s | grep -w inet | awk '{ print $2}'"
# alias ips="arp-scan -l"
# alias scr='ssh root@192.168.0.31'
# alias scj='ssh joernih@192.168.0.31'
# alias rlib='cd ~/R/x86_64-pc-linux-gnu-library/4.3'
# alias agit='cd /home/joernih/teaching/OEKA201/gitclones'
# alias myd='cd ~/Nedlastinger/'
# alias myb='cd ~/Bilder/'
# alias sshD='ssh joernih@192.168.0.31'
# alias sshJ="ssh flemming@192.168.0.50"
# alias sshEJ='ssh joernih@84.211.83.74 -p 31'
# alias sshEF="ssh flemming@84.211.83.74 -p 50"
# alias sshJE="ssh joernih@84.211.83.74 -p 31"
# 
