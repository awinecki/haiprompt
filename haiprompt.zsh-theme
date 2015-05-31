# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  rvm current 2>/dev/null
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}

PROMPT='
%{$FG[237]%}%*%{$reset_color%} %{$FG[242]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) %{$FG[242]%}»%{$reset_color%} '

# ⭠
# フ
# ₪

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[045]%}フ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[074]%}(◊)"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

export VIRTUAL_ENV_DISABLE_PROMPT=yes

RPROMPT='%{$fg_bold[red]%}$(rbenv_version)%{$reset_color%}%{$FG[032]%}%(1V.(%1v).)%{$reset_color%}'
