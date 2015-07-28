#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

VIRTUALENV_THEME_PROMPT_SUFFIX="|"
VIRTUALENV_THEME_PROMPT_PREFIX="|"

function git_duet() {
    local author=`git config duet.env.git-author-initials`
    local committer=`git config duet.env.git-committer-initials`
    local prefix=`[ -n "$author" ] && echo " "`
    local delimiter=`[ -n "$committer" ] && echo "+"`
    echo "$prefix$author$delimiter$committer"
}

function prompt_command() {
    PS1="${purple}\h ${reset_color}in ${green}\w\n${bold_cyan}$(scm_char)$(git_duet)${green}$(scm_prompt_info) ${green}→${reset_color} "
}

PROMPT_COMMAND=prompt_command;
