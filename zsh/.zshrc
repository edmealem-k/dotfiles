# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pixegami-agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export PATH="$PATH:/usr/bin/mongosh"
export PATH="$PATH:/usr/share/maven/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/.local/bin:$PATH"


# package.json scripts
alias ns="npm run start"
alias nd="npm run dev"
alias psd="pnpm start:dev"
alias pd="pnpm dev"
alias pb="pnpm build"
alias pi="pnpm install"

# clear the terminal
alias c="clear"
alias v="nvim"

alias pst="npx prisma studio"
alias pdp="npx prisma db push"
alias pdg="npx prisma generate"

alias brndec="sudo brightnessctl set 100-"
alias brninc="sudo brightnessctl set +100"

# cd Downloads
alias cdd="cd ~/Downloads"
# cd Documents
alias cdoc="cd ~/Documents"

# cd up directories
alias cjd="cd ../"
alias ckd="cd ../../"
alias cld="cd ../../../"

# filter ls results by type (folders vs. files)
alias lsf="ls -d */"
# -d prevents listing contents of the directories.
# */ matches only folders.

alias lsd="ls -p | grep /"
# -p adds a trailing / to directories.
# grep -v / excludes them → leaves only files.

# List only PDFs
alias lsfpdf='ls *.pdf 2>/dev/null'

# List only images (common formats)
alias lsfimg='ls *.png *.jpg *.jpeg *.webp 2>/dev/null'

# List only videos
alias lsfvid='ls *.mp4 *.mov *.webm 2>/dev/null'

# List only spreadsheets
alias lsfexcel='ls *.xlsx 2>/dev/null'

# List only JSON files
alias lsfjson='ls *.json 2>/dev/null'

# List only markdown/text
alias lsfdoc='ls *.md *.txt *.doc 2>/dev/null'

# List only archives (compressed)
alias lsfzip='ls *.zip *.tar.gz *.xz 2>/dev/null'

# List only Postman collections
alias lsfpostman='ls *postman_collection*.json 2>/dev/null'

# List only code/scripts
alias lsfcode='ls *.js *.sql 2>/dev/null'

# List only design files
alias lsfdesign="ls *.fig *.drawio 2>/dev/null"

# List only resumes/CVs
alias lsfcv='ls *CV*.pdf *resume*.pdf *Edmealem*.pdf 2>/dev/null'





# # 1. Check WARP connection state
# alias cloudflare_status="warp-cli status"
# # 2. If it’s disconnected, you can connect manually
# alias cloudflare_connect="warp-cli connect"
# # 3. If you want to disconnect, use:
# alias cloudflare_disconnect="warp-cli disconnect"
# # 4. Verify with IP check
# # "curl https://www.cloudflare.com/cdn-cgi/trace"

# 1. Check WARP connection state
alias cloudflare_status="sudo systemctl status warp-svc"
# 2. If it’s disconnected, you can connect manually
# alias cloudflare_connect="warp-cli connect"
alias cloudflare_connect="sudo systemctl start warp-svc"
# 3. If you want to disconnect, use:
alias cloudflare_disconnect="sudo systemctl stop warp-svc"
# 4. Verify with IP check
# "curl https://www.cloudflare.com/cdn-cgi/trace"

alias ld="lazydocker"
alias lz="lazygit"

alias slp="sudo systemctl suspend"

alias env="e .env"
# Add this to your .zshrc
alias reload="source ~/.zshrc"

[[ -f /usr/share/doc/fzf/examples/completion.zsh ]] && source /usr/share/doc/fzf/examples/completion.zsh
[[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]] && source /usr/share/doc/fzf/examples/key-bindings.zsh
export PATH=$HOME/bin:$PATH

. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
source <(ng completion script)

eval "$(starship init zsh)"
export PATH=$PATH:~/go/bin

# Smart directory navigation with zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
  alias j='z'
fi

# opencode
export PATH=/home/edmealem.k/.opencode/bin:$PATH

# bun completions
[ -s "/home/edmealem.k/.bun/_bun" ] && source "/home/edmealem.k/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/opt/nvim-linux-x86_64/bin:$PATH"


# Added by Antigravity CLI installer
export PATH="/home/edmealem.k/.local/bin:$PATH"
export PATH="$HOME/Odin:$PATH"
