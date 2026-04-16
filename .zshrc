bindkey -v

# VIM "Insert - Normal" mode switching delay. Do not set this value under 15
export KEYTIMEOUT=15

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

#
# Set up fz key bindings and fuzzy completion
eval "$(fzf --zsh)"

# ZSH Command autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Syntax Highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Better `ls`
alias ls="eza --color=always --all --long --no-filesize --icons=always --no-time --no-user --no-permissions"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Utility scripts for all uses
alias gen_secret="node -e \"console.log(require('crypto').randomBytes(32).toString('hex'))\""
alias db_connect="/Applications/XAMPP/xamppfiles/bin/mysql -u root"
alias pgdb_start="postgres -D /usr/local/opt/postgresql@17";

# Creates a directory and sets it as CWD
mkcd() {
  mkdir $1 && cd $1
}

# Some git-related setup commands
alias gitignore_setup="curl https://www.toptal.com/developers/gitignore/api/macos,windows,linux,intellij,visualstudiocode,eclipse >> .gitignore"
alias precommit_setup="pre-commit install
    curl https://raw.githubusercontent.com/mfacecchia/zsh-conf/refs/heads/main/.pre-commit-config.yaml >> .pre-commit-config.yaml
    pre-commit autoupdate"

export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export GITLEAKS_CONFIG="$HOME/.config/gitleaks/.gitleaks.toml"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

alias ec="editorconfig-checker"

# Get public IPv4 address utility
alias pub_ipv4="curl https://api.ipify.org"

