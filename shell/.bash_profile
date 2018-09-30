# Load other dotfiles
for file in ~/.dotfiles/shell/.{path,bash_prompt,exports,aliases,functions,rbenv,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing
shopt -s nocaseglob

# Append to the bash history file
shopt -s histappend

# Autocorret typos in path names
shopt -s cdspell

# Make sure ssh-agent variable are set correctly
eval `ssh-agent` 2>&1 > /dev/null

# Set solorized dircolors
if [ "$(uname )" != "Darwin" ]; then
	eval `dircolors ~/dotfiles/dircolors/dircolors.ansi-dark`
fi

export XDEBUG_CONFIG="idekey=VSCODE"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
