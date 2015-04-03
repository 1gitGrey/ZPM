alias tmux="TERM=xterm-256color tmux -2 attach || TERM=xterm-256color tmux -2 -f${0:a:h}/tmux.conf new"

if [[ -z $TMUX_AUTOSTART  && -n "$SSH_CONNECTION" ]]; then
    TMUX_AUTOSTART="true"
fi

function _tmux_autostart(){
  if [[ "$TMUX_AUTOSTART" == "true" && -z "$TMUX" ]]
  then
      tmux
      exit 0
  fi
}

_ZPM_End_hooks=( $_ZPM_End_hooks _tmux_autostart )
