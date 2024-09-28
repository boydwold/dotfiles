if [[ $TERM == 'dumb' ]]; then
  return 1
fi

builtin emulate -L zsh ${=${options[xtrace]:#off}:+-o xtrace}
builtin setopt extended_glob typeset_silent

if (( $+commands[eza] )); then
  typeset enable_autocd=0
  typeset -ag eza_params

  eza_params=(
    '--git' '--icons=always' '--group' '--group-directories-first'
    '--time-style=iso' '--color=auto' '--header' '--binary'
    '--links' '--git-ignore'
  )

  [[ ! -z $_EZA_PARAMS ]] && eza_params=($_EZA_PARAMS)

  alias ls='eza'
  alias l='eza --all $eza_params'
  alias ll='eza --all --long $eza_params'
  alias llm='eza --all --long --sort=modified $eza_params'
  alias la='eza -lbhHigUmuSa'
  alias lx='eza -lbhHigUmuSa@'
  alias lt='eza --tree $eza_params'
  alias tree='eza --tree $eza_params'
  alias ltr='eza --tree --reverse $eza_params'
  alias ldu='eza --total-size --all --long $eza_params'

  [[ "$AUTOCD" = <-> ]] && enable_autocd="$AUTOCD"
  if [[ "$enable_autocd" == "1" ]]; then
    # Function for cd auto list directories
    →auto-eza() { command eza $eza_params; }
    [[ $chpwd_functions[(r)→auto-eza] == →auto-eza ]] || chpwd_functions=( →auto-eza $chpwd_functions )
  fi
else
  print "Please install eza before using this plugin." >&2
  return 1
fi

return 0

#eza --long --group --header --binary --time-style=iso --icons=always --git --group-directories-first --color=auto