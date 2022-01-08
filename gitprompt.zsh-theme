get_git_status() {

  if [ -d ".git" ]; then;
    upstream=`git for-each-ref --format='%(upstream:short)' $(git symbolic-ref -q HEAD)`
    if [ -z "$upstream" ]; then;
      echo "%{$fg_bold[red]%}(No upstream)%{$reset_color%} "
    else
      count1=`git log --oneline @{u}.. | wc -l | awk '{ print $1 }'`
      count2=`git diff --cached --name-only | wc -l | awk '{ print $1 }'`
      count3=`git diff --shortstat | sed 's/[a-z,\(\)+-]//g; s/[[:digit:]]   //g; s/^ //; s/ $//; s/ /+/' | bc`
      
      if [ -z "$count3" ]; then
      else echo "%{$fg_bold[yellow]%}! $count3%{$reset_color%} "
      fi
      if [ $count2 -gt 0 ]; then
        echo "%{$fg_bold[yellow]%}+ $count2%{$reset_color%} "
      fi
      if [ $count1 -gt 0 ]; then
        echo "%{$fg_bold[green]%}✓ $count1%{$reset_color%} "
      fi
    fi
  fi
}

PROMPT="%(?:%{$fg_bold[cyan]%}➜ :%{$fg_bold[cyan]%}➜ )"
PROMPT+=' %{$fg[green]%}%~%{$reset_color%} $(git_prompt_info)$(get_git_status)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"