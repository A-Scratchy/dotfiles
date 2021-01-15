# set some env variables
export CLASSPATH=~/Source/Repos/Java/Packages/javafx-sdk-15/lib/*:.
export JAVA_HOME=/usr/lib/jvm/bellsoft-java11-full-amd64 
export JAVA_FX=/home/scratchy/Source/Repos/Java/Packages/javafx-sdk-15/lib
export ANDROID_SDK_ROOT=/home/scratchy/.android/cmdline-tools
export ANDROID_HOME=$HOME/Android/
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/.nvim/nvim/usr/bin
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/scratchy/.oh-my-zsh"
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)

# antigen

source ~/antigen.zsh
source ~/zsh/fzf-tab.plugin.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# plugins with oh-my-zsh
antigen bundle git
antigen bundle common-aliases
antigen bundle z

# external plugins
antigen bundle lukechilds/zsh-nvm
antigen bundle Aloxaf/fzf-tab
antigen bundle zpm-zsh/clipboard
antigen bundle unixorn/git-extra-commands
antigen bundle psprint/zsh-navigation-tools
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting # must be last plugin to get effect

# theme
antigen theme romkatv/powerlevel10k

# apply config
antigen apply

# Aliases

alias ec="nvim $HOME/.zshrc"
alias sc="source $HOME/.zshrc"
alias vc="nvim $HOME/dotfiles/init.vim"
alias ls="logo-ls -D -a"
alias shutdown="systemctl poweroff -i"

# Auto ls when changinf directories
# chpwd() {
#  logo-ls -D -a
# }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fpath+=${ZDOTDIR:-~}/.zsh_functions
