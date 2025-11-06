# Evaluate once at assignment (recommended)
RC="$( [ -n "$BASH_VERSION" ] && printf '%s' "$HOME/.bashrc" || printf '%s' "$HOME/.zshrc" )"
alias .s="source $RC"
alias .a="$EDITOR $RC"

# Modern replacements
alias bat="batcat"
alias cat="bat -pp" # --plain --paging=never

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias l.='ls -d .* --color=auto'

