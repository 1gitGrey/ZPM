#!/usr/bin/env zsh

if ls --version >/dev/null 2>&1 ; then
    if [[ $COLORS == "true" ]]; then
        if hash grc 2>/dev/null; then
            alias ll="grc --config=${0:a:h}/conf.other ls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
            alias lsd="grc --config=${0:a:h}/conf.other ls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M -d *(-/DN)"
            alias ,="grc --config=${0:a:h}/conf.other ls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
        else
            alias ll="ls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
            alias lsd="ls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M -d *(-/DN)"
            alias ,="ls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
        fi
        alias ls='ls -CFlxBh --color --group-directories-first'
    else
        alias ll="ls -lFh --color=never  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
        alias lsd="ls -lFh --color=never  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M -d *(-/DN)"
        alias ,="ls -lFh --color=never  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
    fi

    alias l="ls"
    alias la='ls -A'
else
    if hash gls 2>/dev/null; then
        if [[ $COLORS == "true" ]]; then
            if hash grc 2>/dev/null; then
                alias ll="grc --config=${0:a:h}/conf.other gls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
                alias lsd="grc --config=${0:a:h}/conf.other gls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M -d *(-/DN)"
                alias ,="grc --config=${0:a:h}/conf.other gls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
            else
                alias ll="gls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
                alias lsd="gls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M -d *(-/DN)"
                alias ,="gls -lFh --color  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
            fi
            alias ls='gls -CFlxBh --color --group-directories-first'
        else
            alias ll="gls -lFh --color=never  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
            alias lsd="gls -lFh --color=never  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M -d *(-/DN)"
            alias ,="gls -lFh --color=never  --group-directories-first --time-style=+%Y/%m/%d\ %H:%M"
        fi
        alias l="gls"
        alias la='gls -A'
    else
        alias ls="ls -GF"
        alias l="ls -GF"
        alias ll="ls -GFl"
        alias la="ls -AGF"
    fi
fi


