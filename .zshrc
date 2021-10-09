# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="boneless"

CASE_SENSITIVE="false"

DISABLE_UNTRACKED_FILES_DIRTY="true"


# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}


alias pyhton="python3"
alias cass="ssh cassarossa.samfundet.no"
alias cirkus="ssh cirkus.samfundet.no"
alias cls="clear"
alias lsl="ls -l"
alias lsla="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../.."
alias cduwsgi="cd /etc/uwsgi/apps-available"
alias cdapache="cd /etc/apache2/sites-available"
alias resuka="sudo systemctl restart uwsgi-custom@erlendps.uka.no.service"
alias resinnsida="sudo systemctl restart uwsgi-custom@innsida-erlendps.uka.no.service"
alias confzsh="vim ~/.dot-files/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias mcass="mosh cassarossa.samfundet.no -6"
alias python="python3"
