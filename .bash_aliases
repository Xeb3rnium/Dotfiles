unset HISTFILE



alias lsa='ls -lah'
alias lsd='open $(pwd)'
alias chval='stat -f "%OLp"'
alias clear='history -c ; rm -rf ~/.bash_history && clear'
alias hxd='hexdump -C'
alias del='rm -rfP'
alias profile='edit ~/.bash_profile'
alias hosts='cat ~/.ssh/config'
alias off='sudo shutdown -P now'
alias jg='for x in *.jpg; do mv "$x" "${x%.jpg}.jpeg"; done'
alias inc='i=1; for x in *.jpeg; do mv "$x" photo"$i".jpeg; let i=i+1; done'


alias backup='adb backup -apk -shared -all -f'
alias snap='adb exec-out screencap -p >'
alias rec='adb shell screenrecord /storage/*-*/DCIM/screen.mp4; sleep 1; adb pull /storage/*-*/DCIM/screen.mp4; sleep 1; adb shell rm /storage/*-*/DCIM/screen.mp4'


alias ytcv='youtube-dl -F'
alias ytdv='youtube-dl -f mp4'
alias ytda='youtube-dl -x --audio-format mp3'
alias ythd='youtube-dl -f 137'
alias ytqd='youtube-dl -f 264'
alias ytud='youtube-dl -f 138'

alias gitupdate='git pull origin master'
alias gitrestore='git reset --hard origin/master'
alias giturl='git remote show origin'

alias aptdate='sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove && sudo apt clean'
alias vnc='tightvncserver -geometry 1600x900 -depth 24'
