# Movement
alias clg='cd ~/collage/collage-web'
alias clgc='cd ~/collage/collage-web/client'

# Boot
alias rs='rails s'
alias rc='rails c'
alias yi='yarn install'
alias ys='yarn start'

# DB
alias pgup='brew services start postgresql@9.6'
alias pgdown='brew services stop postgresql@9.6'
alias pgrestart='brew services restart postgresql@9.6'

# I18n
alias trsync='rails translations:sync && gaa && gc -m "Translations"'

alias tlog='tail -n 100 ~/collage/collage-web/log/test.log'
alias work-jobs='pgrep -f jobs | xargs kill -9 && bin/rails jobs:work'
alias kill-spring="pgrep -f 'spring server' | xargs kill -9"
