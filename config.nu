# config.nu
#
# Installed by:
# version = "0.107.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

$env.config.show_banner = false
$env.config.show_banner = false

#alias cat = bat
alias q = exit
alias l = lazygit
alias n = nvim
alias a = cdh
alias c = clear
alias h = btop
alias f = ^explorer.exe .
alias v = vim
alias la = ls -la
alias lh = ls -lh

alias g = git
alias ga = git add
alias gaa = git add --all
alias gap = git apply
alias gb = git branch
alias gba = git branch --all
alias gbd = git branch --delete
alias gbD = git branch --delete --force
alias gc = git commit --verbose
alias gca = git commit --verbose --all
alias gcm = git checkout (git rev-parse --abbrev-ref HEAD)
alias gco = git checkout
alias gcb = git checkout -b
alias gcl = git clone --recurse-submodules
alias gd = git diff
alias gds = git diff --staged
alias gl = git pull
alias gp = git push
alias gs = git status
alias gst = git status
alias gss = git status --short
alias gsb = git status --short --branch
alias gsw = git switch
alias gswc = git switch --create
alias gsu = git submodule update
alias gsi = git submodule init
alias glog = git log --oneline --decorate --graph

source ~\AppData\Roaming\nushell/prompt.nu
source ~\AppData\Roaming\nushell/git.nu
source ~\AppData\Roaming\nushell/docker.nu
$env.PROMPT_COMMAND = {|| full-left-prompt }
$env.PROMPT_INDICATOR = {|| "" }
$env.PROMPT_COMMAND_RIGHT = {|| "" }

