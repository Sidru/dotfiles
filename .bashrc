#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

# My personal Alias
alias get_esp32='export PATH="$PATH:$HOME/esp/xtensa-esp32-elf/bin"'

alias cat='bat'
