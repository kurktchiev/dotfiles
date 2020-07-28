# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM=xterm-256color
export PATH=/usr/local/sbin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Set color on tabs
tab-color() {
  echo -ne "\033]6;1;bg;red;brightness;$1\a"
  echo -ne "\033]6;1;bg;green;brightness;$2\a"
  echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}
tab-reset() {
  echo -ne "\033]6;1;bg;*;default\a"
  trap - INT EXIT
}

# Auto retry
function auto-retry()
{
  false
  while [ $? -ne 0 ]; do
      "$@" || (sleep 1;false)
  done
}
# Auto retry an ssh connection
function ressh()
{
  # Check we've got command line arguments
  if [ -z "$*" ]; then
      echo "Need to specify ssh options"
      exit 1
  fi
  auto-retry ssh "$@"
}

##MODIFY##
# Setup GO
export GOPATH=$HOME/Sources/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"


# Source some bash-completion specific completions
# mainly for DCTL
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d/dctl

# Homebrew github token
export HOMEBREW_GITHUB_API_TOKEN=c25fccc0be6bc492786dcaa4182d085d29ca7663
export LESS='-IRX'

setopt ALWAYS_TO_END           # full completions move cursor to the end
setopt AUTO_CD                 # `dirname` is equivalent to `cd dirname`
setopt AUTO_PUSHD              # `cd` pushes directories to the directory stack
setopt EXTENDED_GLOB           # (#qx) glob qualifier and more
setopt GLOB_DOTS               # glob matches files starting with dot; `*` becomes `*(D)`
setopt HIST_EXPIRE_DUPS_FIRST  # if history needs to be trimmed, evict dups first
setopt HIST_IGNORE_DUPS        # don't add dups to history
setopt HIST_IGNORE_SPACE       # don't add commands starting with space to history
setopt HIST_REDUCE_BLANKS      # remove junk whitespace from commands before adding to history
setopt HIST_VERIFY             # if a cmd triggers history expansion, show it instead of running
setopt INTERACTIVE_COMMENTS    # allow comments in command line
setopt MULTIOS                 # allow multiple redirections for the same fd
setopt NO_BANG_HIST            # disable old history syntax
setopt NO_BG_NICE              # don't nice background jobs; not useful and doesn't work on WSL
setopt PUSHD_IGNORE_DUPS       # don’t push copies of the same directory onto the directory stack
setopt PUSHD_MINUS             # `cd -3` now means "3 directory deeper in the stack"
setopt SHARE_HISTORY           # write and import history on every command
setopt EXTENDED_HISTORY        # write timestamps to history
# Disable highlighting of text pasted into the command line.
zle_highlight=('paste:none')

##MODIFY##
# Path to your oh-my-zsh installation.
if [ -d "/Users/boris" ]; then
  export ZSH="/Users/boris/.oh-my-zsh"
fi
if [ -d "/Users/valhalla" ]; then
  export ZSH="/Users/valhalla/.oh-my-zsh"
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Source PurePower if using PowerLevel10k
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
#source ~/.config/zsh/boris.zsh
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
#ZSH_CUSTOM=~/.config/zsh

##MODIFY##
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git percol fasd brew helm kubectl vscode docker iterm2 colorize command-not-found)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#alias zshconf="code ~/.zshrc"
#alias ohmz="code ~/.oh-my-zsh"

PATH="/Users/boris/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/boris/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/boris/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/boris/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/boris/perl5"; export PERL_MM_OPT;
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#zsh command suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# zsh command highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_AUTOSUGGEST_USE_ASYNC=1
