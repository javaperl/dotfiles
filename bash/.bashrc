# ------------------
# ----- goroot -----
# ------------------
#GOROOT=/usr/local/Cellar/go/1.11.4/libexec

# ----------------
# ----- deno -----
# ----------------
DENO_INSTALL=$HOME/.deno

# ------------------
# ----- gopath -----
# ------------------
GOPATH=$HOME/personal/go_projects

# ----------------
# ----- path -----
# ----------------
PATH=.
PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/.cargo/bin
PATH=$PATH:/opt/homebrew/opt/make/libexec/gnubin
PATH=$PATH:/opt/homebrew/opt/gnu-sed/libexec/gnubin
PATH=$PATH:/opt/homebrew/opt/grep/libexec/gnubin
PATH=$PATH:/opt/homebrew/opt/gnu-tar/libexec/gnubin
PATH=$PATH:/opt/homebrew/opt/gnu-getopt/bin
PATH=$PATH:/opt/homebrew/opt/findutils/libexec/gnubin
PATH=$PATH:/opt/homebrew/opt/coreutils/libexec/gnubin
PATH=$PATH:/opt/homebrew/opt/postgresql@15/bin
PATH=$PATH:$/usr/local/go/bin
PATH=$PATH:/opt/homebrew/bin
PATH=$PATH:$DENO_INSTALL/bin
PATH=$PATH:$HOME/.npm-packages/bin
#PATH=$PATH:$GOROOT/bin
PATH=$PATH:$GOPATH/bin
#PATH=$PATH:$HOME/personal/flutter/bin
#PATH=$PATH:$HOME/personal/usr/local/bin
#PATH=$PATH:$HOME/personal/usr/local/go/bin
#PATH=$PATH:/opt/local/bin
#PATH=$PATH:/opt/local/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/usr/X11R6/bin
PATH=$PATH:/snap/bin
#PATH=$PATH:$HOME/Library/Python/3.7/bin

# -----------------------------
# ----- dyld_library_path -----
# -----------------------------
DYLD_LIBRARY_PATH=.
DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$HOME/personal/usr/local/lib
DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/Cellar/sdl2_ttf/2.0.12/lib
DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/Cellar/sdl2/2.0.3/lib


# ------------------------
# ----- library_path -----
# ------------------------
LIBRARY_PATH=.
LIBRARY_PATH=$LIBRARY_PATH:$HOME/personal/usr/local/lib
LIBRARY_PATH=$LIBRARY_PATH:/usr/local/Cellar/sdl2_ttf/2.0.12/lib
LIBRARY_PATH=$LIBRARY_PATH:/usr/local/Cellar/sdl2/2.0.3/lib


# -------------------
# ----- manpath -----
# -------------------
#MANPATH=$MANPATH:$HOME/personal/usr/local/share/man
#MANPATH=$MANPATH:/opt/local/share/man
MANPATH=$MANPATH:/usr/local/share/man

# ----------------------------
# ----- development root -----
# ----------------------------
DEV_ROOT=$HOME/ws

# ---------------
# ----- git -----
# ---------------
#GIT_DIR=$HOME/.git
#GIT_WORK_TREE=$HOME/temp
#GIT_WORK_TREE="$HOME/virtual_machines/kevinwan-wxp1.vmwarevm"

# -----------------
# ----- misc. -----
# -----------------
#PS1="\u@\h\$ "
#PS1="\u@\h \w"'\[\033\033\\\]\$ '
PS1="\u@\h:\w\$ "
EDITOR="vim"

# -------------------------------
# ----- FZF_DEFAULT_COMMAND -----
# -------------------------------
FZF_DEFAULT_COMMAND='rg --files'

# ------------------
# ----- VISUAL -----
# ------------------
VISUAL=vim

#
# --------------------------------------
# ----- Bash HISTSIZE/HISTFILESIZE -----
# --------------------------------------
HISTSIZE=100000
HISTFILESIZE=100000

#
# -----------------------------------------
# ----- RUST_SRC_PATH for rusty-tags  -----
# -----------------------------------------
RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src/

#
# -----------------------------------------------------------
# ----- DISPLAY - for Windows WSL 2 Terminal xsel/xclip -----
# -----------------------------------------------------------
DISPLAY=:0

# --------------------------------------------------------------------------------------------------
# ----- BASH_SILENCE_DEPRECATION_WARNING for undisplaying MacOS terminal warning of zsh change -----
# --------------------------------------------------------------------------------------------------
BASH_SILENCE_DEPRECATION_WARNING=1

# ---------------------------
# ----- XDG_CONFIG_HOME -----
# ---------------------------
#XDG_CONFIG_HOME=$HOME/.config/

# ----------------------------
# ----- export variables -----
# ----------------------------
#export GOROOT GOPATH PATH DYLD_LIBRARY_PATH LIBRARY_PATH MANPATH DEV_ROOT PS1 EDITOR FZF_DEFAULT_COMMAND VISUAL
export GOPATH PATH DYLD_LIBRARY_PATH LIBRARY_PATH MANPATH DEV_ROOT PS1 EDITOR FZF_DEFAULT_COMMAND VISUAL HISTSIZE HISTFILESIZE RUST_SRC_PATH BASH_SILENCE_DEPRECATION_WARNING DENO_INSTALL DISPLAY

# -------------------
# ----- aliases -----
# -------------------
# for BSD/macOS
#alias ls='ls -G'
# for other linux
#alias ls='ls --color=auto'
#alias vi='vim -X'
#alias vim='vim -X'
#alias vim='nvim'
alias vi='vim'
alias cddoc='cd /home/kevin/ws/docs/is/fozziebear/2.0/eng'
alias cdcsrc='cd /home/kevin/ws/senderbase_data/src/cpp'
alias cddcsrc='cd /home/kevin/ws/dbconf/src/python/dbconf'
alias cdpysrc='cd /home/kevin/ws/fozziebear/src/python/fozziebear'
alias cdconf='cd /home/kevin/ws/fozziebear/etc'
alias cdlogs='cd /home/kevin/test/logs'
alias cdtest='cd /home/kevin/ws/fozziebear/unittest/python/fozziebear'
alias cdstackless='cd /usr/local/ironport/godspeed/stackless/Python'
alias mksbd='cd /Users/kevin/ws/cscope/sbd; cscope -b -q -k'
alias cssbd='cscope -f /Users/kevin/ws/cscope/sbd/cscope.out -d'
alias mkavc='cd /Users/kevin/ws/cscope/avc; cscope -b -q -k'
alias mktc='cd /Users/kevin/ws/cscope/tokyocabinet; cscope -b -q -k'
alias csavc='cscope -f /Users/kevin/ws/cscope/avc/cscope.out -d'
alias cstc='cscope -f /Users/kevin/ws/cscope/tokyocabinet/cscope.out -d'
alias disku='du -s * | sort -n'
alias setpaths='setpathsdev'
alias setPaths='setpathsdev'
alias setPathsDev='setpathsdev'
alias setPathsProd='setpathsprod'
alias unsetPaths='unsetpaths'
alias setupCoro='setupcoro'
alias resetvpn='sudo kextunload /System/Library/Extensions/CiscoVPN.kext;sudo kextload /System/Library/Extensions/CiscoVPN.kext'
#alias mongod='/opt/local/bin/mongod --dbpath /Users/kevin/personal/test/mongo_db'
alias screen2560='xrandr --newmode "2560x1440_60.00" 312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync; xrandr --addmode VGA-1 2560x1440_60.00; xrandr --output VGA-1 --mode 2560x1440_60.00'
alias screen1280='xrandr --newmode "1280x1024_60.00" 109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync; xrandr --addmode VGA-1 1280x1024_60.00; xrandr --output VGA-1 --mode 1280x1024_60.00'
alias screen1024='xrandr --newmode "1024x768_60.00" 63.50  1024 1072 1176 1328  768 771 775 798 -hsync +vsync; xrandr --addmode VGA-1 1024x768_60.00; xrandr --output VGA-1 --mode 1024x768_60.00'

# -------------------------------
# ----- disable flow contrl -----
# -------------------------------
stty -ixon
#stty stop ^e   # instead of ^s
#stty start ^b  # instead of ^q

# --------------------------------------------
# ----- set command line editor to be vi -----
# --------------------------------------------
set -o vi

# --------------------------------------------
# ----- execute fzf shell initialization -----
# --------------------------------------------
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# -------------------------------------
# ----- execute some environments -----
# -------------------------------------
#eval "$(starship init bash)"
. "$HOME/.cargo/env"
eval "$(zoxide init bash)"
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#
# vim fzf
#
vf() {
  local file
  file=$(fzf --preview 'bat --color=always {}' --height 40% --border)
  if [[ -n $file ]]; then
    vim "$file"
  fi
}
