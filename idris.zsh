# pack package manager completion
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
eval "$(~/.local/bin/pack completion-script pack)"
