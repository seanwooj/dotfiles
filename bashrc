
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/Library/PostgreSQL/9.2/bin:$PATH

alias pg_ctl='sudo -u postgres pg_ctl -D /Library/PostgreSQL/9.2/data/'
alias migrate='rake db:migrate; rake db:migrate RAILS_ENV=test'
alias ll='ls -l'
set editing-mode vi

source ~/dotfiles/liquidprompt/liquidprompt

