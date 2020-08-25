# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/dqopb/.oh-my-zsh

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# env ##############################################

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# nodenv
eval "$(nodenv init -)"


# language settings ##############################################

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

# postgres
export PGDATA='/usr/local/var/postgres'


# zsh configs ##############################################

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-completions
  zsh-autosuggestions
)

autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit -u
setopt print_eight_bit
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt +o nomatch

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# オプション
# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# フローコントロールを無効にする
setopt no_flow_control

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ヒストリファイルに保存するとき、すでに重複したコマンドがあったら古い方を削除する
setopt hist_save_nodups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 補完候補が複数あるときに自動的に一覧表示する
setopt auto_menu

# Alias ###################################################################

# Linux
alias src!="source ~/.zshrc && echo 'complete'"
alias zshedit="vim ~/.zshrc"
alias vi="vim"
alias less='less -qR'
alias his="history -i"
alias his-m="history -i -m"
alias top="htop"

## utilities
alias tree="pwd && tree -I 'node_modules' -L 1"
alias trees="pwd && tree -I 'node_modules' -L"
alias curl="curl -Ss -v"

## others
alias rm="rm -i"
alias rmf="rm -rf -i"
alias cp="cp -i"
alias mv="mv -i"

## global
alias -g JQ="| jq"
alias -g ZSH="~/.zshrc"

# Language
## yarn
alias y="yarn"
alias reins-y="rm -rf node_modules && y cache clean && y"
alias cache-y="yarn cache --clean"

## npm
alias nr="npm run"
alias ni="npm ci"
alias reins-npm="rm -rf node_modules && npm cache clean --force && npmi" 

## bundle
alias be="bundle exec"


# Docker
alias doc="docker"
alias docc="docker-compose"
alias docm="docker-machine"
alias docremove-c="docker rm `docker ps -a -q`"
alias docremove-i="docker rmi $(docker images -q)"
alias docstop-all="docker stop $(docker ps -q)"
alias doccps="docker-compose ps"


# hadoop
# alias hadoop-start="sh /usr/local/Cellar/hadoop/2.7.3/sbin/start-all.sh"
# alias hadoop-restart="sh /usr/local/Cellar/hadoop/2.7.3/sbin/stop-all.sh && sh /usr/local/Cellar/hadoop/2.7.3/sbin/start-all.sh"
# alias hadoop-stop="sh /usr/local/Cellar/hadoop/2.7.3/sbin/stop-all.sh"


# alias git
alias add="git add ."
alias ad="git ad"
alias co="git commit -m"
alias co-amend="git co-amend"
alias dif="git dif"
alias push="git push origin"
alias rst="git rst"
alias rst-h="git reset --hard"
alias rst-m="git reset --mixed"
alias rst-s="git reset --soft"
alias br="git branch"
alias br-m="git branch -m"
alias br-d="git br-d"
alias ch="git ch"
alias ch-b="git checkout -b"
alias st="git status"
alias log="git log --oneline"
alias pull="git pull origin"
alias fetch="git fetch"

################################################################################

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dqopb/google-cloud-sdk/path.zsh.inc' ];
  then
    source '/Users/dqopb/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dqopb/google-cloud-sdk/completion.zsh.inc' ];
  then
    source '/Users/dqopb/google-cloud-sdk/completion.zsh.inc';
fi

