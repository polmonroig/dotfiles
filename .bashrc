#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# pywal 
# setsid wal -eqi $HOME/Pictures/Wallpapers/river.jpg


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# open terminal icon 
neofetch --gtk2 off --os_arch off --cpu_temp C --disk_percent on
 
# connect bluetooth 
alias connectBT=$HOME/.scripts/bluetooth.sh

# easy command to open pdf 
alias pdf=xdg-open 

# ml path 
export ML=$HOME/PROJECTS/ML 
alias startai="source $ML/.ai/bin/activate; cd $ML"

# configure i3 
alias configure="vim $HOME/.config/i3/config"

# git branch 
git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
}

export PS1="[\u@\h \W]\$(git_branch)\$ "

# custom wallpaper 
# python $HOME/CustomScripts/pywal.py wallpaper day
#  wal -a 85 -i $HOME/CustomScripts/pywal/image >> /dev/null

# connect to lightsail 
alias connectLS="ssh -vi ~/PROJECTS/PERSONAL/web_hosting/LightsailDefaultKey-eu-central-1.pem  ec2-user@18.196.43.9"

# pacman alias to remove unused dependencies 
alias yayRemoveUnused="sudo pacman -R $(pacman -Qdtq)"

# create new terminal in current directory 
export PROMPT_COMMAND="pwd > /tmp/whereami"

# add cuda path 
PATH=/opt/cuda/bin/:$PATH

# antlr support
export LD_LIBRARY_PATH=/usr/local/lib/

# mount nas 
alias mount_nas="sudo mount -t nfs 192.168.8.100:/volume1/Projects /mnt/NAS/"
alias mount_media="sudo mount -t nfs 192.168.8.100:/volume1/Media /mnt/MEDIA/"

