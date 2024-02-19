# Check this out sometime to see if I should use it
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char# environment variables

# If you come from bash you might have to change your $PATH.
source ~/.access_token_env_vars

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
# export PATH="$(yarn global bin):$PATH"
# possibly remove (sept 6, 2021. This is to point my git to the git installed by brew instead of the one from apple)
# export PATH="$(brew --prefix)/bin:$PATH"

# dotnet interactive tool
export PATH="$PATH:/Users/nicholasmahe/.dotnet/tools"
# export PATH="$PATH:/usr/local/bin/dotnet"
# export PATH="$PATH:/usr/local/share/dotnet/sdk/7.0.302"

# Path to your oh-my-zsh installation.
export ZSH="/Users/nicholasmahe/.oh-my-zsh"

export AWS_PHOENIX_LOGIN="aws sso login --profile aws-phoenix"

export PATH=$PATH:/usr/local/Cellar/omnisharp-mono/1.35.3/bin/omnisharp

# don't update all brew packages when trying to install one package
export HOMEBREW_NO_AUTO_UPDATE=1
# this will not auto cleanup/uninstall old versions when running brew upgrade
# Not turning on for now since the only case I have for this is to not uninstall dotnet versions
# export HOMEBREW_NO_INSTALL_CLEANUP=1

# Path for nvm -- commenting out. Use n instead
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Path for .net
export DOTNET="/usr/local/share/dotnet/dotnet"
# export DOTNET="/usr/local/bin/dotnet"

# env var for gh cli
export GH_HOST=github.com

# neovim version manager
alias bob="/Users/nicholasmahe/.cargo/bin/bob"

# Pointing to nvim version from building from source since homebrew nvim is being clunky
# alias nvim="~/.config/nvim/build-from-source/bin/nvim"
# ---------- Aliases -----------

# Files
alias repos="cd ~/Desktop/git/"
alias kitty_config="nvim ~/.config/kitty/kitty.conf"
alias nvim_config="nvim ~/.config/nvim/"
alias zsh_config="nvim ~/.zshrc"
alias fonts_custom_list="cd ~/.local/share/fonts/"
alias tmux_config="nvim ~/.tmux.conf"

# AWS
alias set_aws_profile=". ~/Desktop/git/scripts/aws/set_curent_profile.sh" # maybe symlink this

# git
alias lg="lazygit"
alias Ld="lazydocker"
alias gs="git status"
alias gl="git log"

# docker
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcd="docker-compose down"

# lvim
alias lvim="/Users/nicholasmahe/.local/bin/lvim"

# tools to replace basic terminal cmds
alias cat="bat"
alias ls="exa"

# Plugins

# copies contents of file to clipboard
alias cpf="copyfile"

# ------------------------------
# Path for yabai window tile manager
# The order for the three items is important!
# $HOME/.config/yabai/yabairc # < my recommendation

# Path for skhdrc which let's us map shortcuts for yabai
# $HOME/.config/skhd/skhdrc

# Path for limelight, border color on focused window
# $HOME/.config/limelight/limelightrc

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  # vim in cmd line
  vi-mode
  # copy contents of a file to clipboard
  copyfile
  # aliases and autocompletion for docker-compose
  docker-compose
  # loads env vars found in .env of current working directory
  # dotenv
  # aliases and autocompletion for dotnet cli commands
  dotnet
  # autocompletion for github cli
  gh
  # pretty prints json. cmd syntax: input | pp_json
  jsontools
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# TODO fix because not working and rest of rc file can't execute
# alias python = "/usr/local/bin/python3"
# alias pip = "/usr/local/bin/pip3"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Enable vi mode
bindkey -v


# Load Angular CLI autocompletion.
# source <(ng completion script)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/protobuf@3/bin:$PATH"
export PATH="/usr/local/opt/protobuf/bin:$PATH"
export PATH="/usr/local/opt/protobuf/bin:$PATH"
export PATH="/usr/local/opt/protobuf@3/bin:$PATH"

# bun completions
[ -s "/Users/nicholasmahe/.bun/_bun" ] && source "/Users/nicholasmahe/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
