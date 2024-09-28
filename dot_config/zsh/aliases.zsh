#!/usr/bin/env bash

# reserved character "alias"
function ~() {
    cd ~
}
# Custom zsh
[ -f "$HOME/.config/zsh/eza-aliases.zsh" ] && source "$HOME/.config/zsh/eza-aliases.zsh"

# Change Directory
alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."


# Shortcuts
alias d="cd ~/Documents & ll"
alias dl="cd ~/Downloads && ll"
alias dt="cd ~/Desktop && ll"
alias p="cd ~/Projects && ll"
alias pjr="cd ~/Projects/Repos && ll"
# bat for cat
alias cat='bat'

# # Better ls using eza with Git status where applicable, directories grouped first, and icons
# # alias l="if [ -d .git ]; then eza --all --git --icons=always --group-directories-first; else eza --all --icons=always --group-directories-first; fi" # Lists all files, Git status if applicable, directories first with icons.
# # alias ld="if [ -d .git ]; then eza -lD --git --icons=always --group-directories-first; else eza -lD --icons=always --group-directories-first; fi" # Long listing format, sorted by directories, Git status if applicable, directories first with icons.
# # alias lf="if [ -d .git ]; then eza -lf --git --icons=always --group-directories-first; else eza -lf --icons=always --group-directories-first; fi" # Long listing format of files only, Git status if applicable, directories first with icons.
# # alias lh="if [ -d .git ]; then eza --long --all --classify --git --group-directories-first --icons=always; else eza --long --all --classify --group-directories-first --icons=always; fi" # Long listing of hidden files, Git status if applicable, directories first with icons.
# # alias ll="if [ -d .git ]; then eza --long --group --header --binary --time-style=long-iso --icons --git --group-directories-first; else eza --long --group --header --binary --time-style=long-iso --icons --group-directories-first; fi" # Detailed list, Git status if applicable, directories first with icons.
# # alias ls="if [ -d .git ]; then eza -alf --git --color=always --sort=size --group-directories-first --icons=always; else eza -alf --color=always --sort=size --group-directories-first --icons=always; fi" # List sorted by size, Git status if applicable, directories first with icons and color.
# # alias lt="if [ -d .git ]; then eza -al --git --sort=modified --icons=always --group-directories-first; else eza -al --sort=modified --icons=always --group-directories-first; fi" # List sorted by modification time, Git status if applicable, directories first with icons.
# # alias lsize="if [ -d .git ]; then eza --oneline --reverse --git --sort=size --icons=always --group-directories-first; else eza --oneline --reverse --sort=size --icons=always --group-directories-first; fi" # Single-line list sorted by size, Git status if applicable, directories first with icons.
# # alias la="if [ -d .git ]; then eza -lAF --git --icons=always --group-directories-first; else eza -lAF --icons=always --group-directories-first; fi" # List all files excluding '.' and '..', Git status if applicable, directories first with icons.
# # alias lsd="if [ -d .git ]; then eza -D --git --icons=always --group-directories-first; else eza -D --icons=always --group-directories-first; fi" # Lists only directories, Git status if applicable, directories first with icons.
# # alias lt="if [ -d .git ]; then eza --tree --git --icons=always --group-directories-first; else eza --tree --icons=always --group-directories-first; fi" # Tree view of directories, Git status if applicable, directories first with icons.
# # alias lh="if [ -d .git ]; then eza -lh --git --icons=always --group-directories-first; else eza -lh --icons=always --group-directories-first; fi" # Long listing with human-readable sizes, Git status if applicable, directories first with icons.

# # Better ls using eza with Git status where applicable, directories grouped first, and icons.

# # l - List all files, Git status if applicable, directories first with icons.
# alias l="if [ -d .git ]; then eza --all --git --icons=always --group-directories-first; else eza --all --icons=always --group-directories-first; fi"

# # ld - Long listing format, directories only, Git status if applicable, directories first with icons.
# alias ld="if [ -d .git ]; then eza --long --directories-only --git --icons=always --group-directories-first; else eza --long --directories-only --icons=always --group-directories-first; fi"

# # lf - Long listing format of files only, Git status if applicable, directories first with icons.
# alias lf="if [ -d .git ]; then eza --long --files-only --git --icons=always --group-directories-first; else eza --long --files-only --icons=always --group-directories-first; fi"

# # lh - Long listing of all files with classification, Git status if applicable, directories first with icons.
# alias lh="if [ -d .git ]; then eza --long --all --classify --git --group-directories-first --icons=always; else eza --long --all --classify --group-directories-first --icons=always; fi"

# # ll - Detailed list with headers and binary sizes, Git status if applicable, directories first with icons.
# alias ll="if [ -d .git ]; then eza --long --group-directories-first --header --binary --time-style=long-iso --icons=always --git; else eza --long --group-directories-first --header --binary --time-style=long-iso --icons=always; fi"

# # ls - List sorted by size, Git status if applicable, directories first with icons and color.
# alias ls="if [ -d .git ]; then eza --all --long --files-only --git --color=always --sort=size --group-directories-first --icons=always; else eza --all --long --files-only --color=always --sort=size --group-directories-first --icons=always; fi"

# # lt - List sorted by modification time, Git status if applicable, directories first with icons.
# alias lt="if [ -d .git ]; then eza --all --long --git --sort=modified --group-directories-first --icons=always; else eza --all --long --sort=modified --group-directories-first --icons=always; fi"

# # lsize - Single-line list sorted by size in reverse, Git status if applicable, directories first with icons.
# alias lsize="if [ -d .git ]; then eza --oneline --reverse --git --sort=size --group-directories-first --icons=always; else eza --oneline --reverse --sort=size --group-directories-first --icons=always; fi"

# # la - List all files excluding '.' and '..', Git status if applicable, directories first with icons.
# alias la="if [ -d .git ]; then eza --long --almost-all --classify --git --group-directories-first --icons=always; else eza --long --almost-all --classify --group-directories-first --icons=always; fi"

# # lsd - List only directories, Git status if applicable, directories first with icons.
# alias lsd="if [ -d .git ]; then eza --directories-only --git --group-directories-first --icons=always; else eza --directories-only --group-directories-first --icons=always; fi"

# # ltree - Tree view of directories, Git status if applicable, directories first with icons.
# alias ltree="if [ -d .git ]; then eza --tree --git --group-directories-first --icons=always; else eza --tree --group-directories-first --icons=always; fi"

# # 12. lhuman - Long listing with human-readable sizes, Git status if applicable, directories first with icons.
# alias lhuman="if [ -d .git ]; then eza --long --human-readable --git --group-directories-first --icons=always; else eza --long --human-readable --group-directories-first --icons=always; fi"


# Git
alias g='git'
alias ga='git add'
alias gafzf='git ls-files -m -o --exclude-standard | grep -v "__pycache__" | fzf -m --print0 | xargs -0 -o -t git add' # Git add with fzf
alias grmfzf='git ls-files -m -o --exclude-standard | fzf -m --print0 | xargs -0 -o -t git rm' # Git rm with fzf
alias grfzf='git diff --name-only | fzf -m --print0 | xargs -0 -o -t git restore' # Git restore with fzf
alias grsfzf='git diff --name-only | fzf -m --print0 | xargs -0 -o -t git restore --staged' # Git restore --staged with fzf
alias gf='git fetch'
alias gs='git status'
alias gss='git status -s'
alias gup='git fetch && git rebase'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias glo='git pull origin'
alias gl='git pull'
alias gb='git branch '
alias gbr='git branch -r'
alias gd='git diff'
alias gco='git checkout '
alias gcob='git checkout -b '
alias gcofzf='git branch | fzf | xargs git checkout' # Select branch with fzf
alias gre='git remote'
alias gres='git remote show'
alias glgg='git log --graph --max-count=5 --decorate --pretty="oneline"'
alias gm='git merge'
alias gp='git push'
alias gpo='git push origin'
alias ggpush='git push origin $(current_branch)'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gcmnv='git commit --no-verify -m'
alias gcanenv='git commit --amend --no-edit --no-verify'

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '
alias _='sudo '
alias root='sudo -i'
alias su='sudo -i'
alias wget='wget -c'
alias x='chmod +x '

# Get week number
alias week='date +%V'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias ping='ping -c 5'
alias ports='netstat -tulanp tcp'

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# macOS has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# macOS has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# JavaScriptCore REPL
jscbin="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc";
[ -e "${jscbin}" ] && alias jsc="${jscbin}";
unset jscbin;

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# System
alias shutdown='sudo shutdown now'
alias restart='sudo reboot'
alias suspend='sudo pm-suspend'
alias sleep='pmset sleepnow'
alias clr='clear'
alias e='exit'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files, preserving hyperlinks
# Usage: `mergepdf input{1,2,3}.pdf`
alias mergepdf='gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=_merged.pdf'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# Airport CLI alias
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "${method}"="lwp-request -m '${method}'"
done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume output volume 100'"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Lazygit
alias lg="lazygit"

# # Ranger
# alias r=". ranger"

# Neovim
# If poetry is installed and an environment exists, run "poetry run nvim"
# poetry_run_nvim() {
#   if command -v poetry >/dev/null 2>&1 && [ -f "poetry.lock" ]; then
#     poetry run nvim "$@"
#   else
#     nvim "$@"
#   fi
# }
# alias vi='poetry_run_nvim'
# alias v='poetry_run_nvim'

# Starship Reload
alias sswork='export STARSHIP_CONFIG="$HOME/.config/starship/starship-work.toml" && eval "$(starship init zsh)"'
alias ssdefault='export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml" && eval "$(starship init zsh)"'
alias ssclean='export STARSHIP_CONFIG="$HOME/.config/starship/starship-clean.toml" && eval "$(starship init zsh)"'

# Chezmoi
alias cz='chezmoi'
