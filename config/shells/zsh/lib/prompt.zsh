pr_reset="%f%u%k%s%b"

function prompt_char {
  git branch >/dev/null 2>/dev/null && echo '±' && return
  echo '○'
}

git_stash() {
  local stash
  stash=$(git stash list 2> /dev/null | wc -l | sed -e "s/ *\([0-9]*\)/\+\1/g" | sed -e "s/\+0//")
  echo "%F{117}$stash"
}

ZSH_THEME_GIT_PROMPT_PREFIX=" : %F{228}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$pr_reset"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}*"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%f{green}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function precmd {
  local cwd="%F{79}%2~$pr_reset$(git_prompt_info)$(git_stash)$pr_reset"

  local left
  left=($cwd $(prompt_char))

  PS1="$left "
}
