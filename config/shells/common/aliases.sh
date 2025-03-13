alias ll='ls -laGh'
alias l='ls -G'

# useful command to find what you should be aliasing:
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

# rails stuff
alias rc="if [ -f script/console ]; then script/console; else script/rails console; fi"
alias rs="if [ -f script/server ]; then script/server; else script/rails server; fi"

alias pubkey="cat $HOME/.ssh/*.pub"
alias be='bundle exec'

alias yolo="be rake db:drop db:create db:migrate db:seed"

alias vim='nvim'
alias zed="/Applications/Zed.app/Contents/MacOS/cli"
