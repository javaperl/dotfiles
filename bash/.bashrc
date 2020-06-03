# ------------------
# ----- goroot -----
# ------------------
#GOROOT=/usr/local/Cellar/go/1.11.4/libexec

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

# ----------------------------
# ----- export variables -----
# ----------------------------
#export GOROOT GOPATH PATH DYLD_LIBRARY_PATH LIBRARY_PATH MANPATH DEV_ROOT PS1 EDITOR FZF_DEFAULT_COMMAND VISUAL
export GOPATH PATH DYLD_LIBRARY_PATH LIBRARY_PATH MANPATH DEV_ROOT PS1 EDITOR FZF_DEFAULT_COMMAND VISUAL HISTSIZE HISTFILESIZE RUST_SRC_PATH

# -------------------
# ----- aliases -----
# -------------------
alias ls='ls -G'
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
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# -----------------------------
# ----- execute startship -----
# -----------------------------
eval "$(starship init bash)"
