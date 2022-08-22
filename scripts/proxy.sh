

deproxy() {
    unset -v http_proxy https_proxy

    if [ -n "${_OLD_PROXY_PS1:-}" ] ; then
        PS1="${_OLD_PROXY_PS1:-}"
        export PS1
        unset _OLD_PROXY_PS1
    fi

    if [ ! "${1:-}" = "nondestructive" ] ; then
    # Self destruct!
        unset -f deproxy
    fi
}


# unset irrelevant variables
deproxy nondestructive

# Enable proxy
export http_proxy=http://127.0.0.1:1087
export https_proxy=http://127.0.0.1:1087

# COLOR
# https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
_GREEN=$(tput setaf 2)
_BLUE=$(tput setaf 4)
_RED=$(tput setaf 1)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)

# PS1
_OLD_PROXY_PS1="${PS1:-}"
PS1="[${_GREEN}${_BOLD}proxy${_RESET}]${PS1:-}"
export PS1
