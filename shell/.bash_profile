# Load other dotfiles
for file in ~/.dotfiles/shell/.{path,bash_prompt,exports,aliases,functions,rbenv,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Load OS Specific Files
case `uname` in
    Darwin)
        for file in ~/.dotfiles/shell/.osx.{path,exports,aliases,functions,extra}; do
            [ -r "$file" ] && source "$file"
        done
        unset file
    ;;
esac

# Make sure ssh-agent variable are set correctly
eval `ssh-agent` 2>&1 > /dev/null
