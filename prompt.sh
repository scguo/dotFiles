if test -f /etc/profile.d/git-sdk.sh
then
	TITLEPREFIX=SDK-${MSYSTEM#MINGW}
else
	TITLEPREFIX=$MSYSTEM
fi

PS1='\[\033]0;$TITLEPREFIX:${PWD//[^[:ascii:]]/?}\007\]' # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[1;30m\]'       # change to black
PS1="$PS1"'['                  # [
PS1="$PS1"'\[\033[1;32m\]'       # change to green
PS1="$PS1"'\u'                 # user
PS1="$PS1"'\[\033[1;30m\]'       # change to black
PS1="$PS1"'@'                  # @
PS1="$PS1"'\[\033[1;34m\]'       # change to indigo
PS1="$PS1"'\h'                 # host
PS1="$PS1"'\[\033[1;30m\]'       # change to black
PS1="$PS1"'] '                 # ]
PS1="$PS1"'\[\033[1;31m\]'     # change to bright red
PS1="$PS1"'\D{%F} '            # YYYY-MM-DD
PS1="$PS1"'\[\033[1;33m\]'     # change to bright yellow
PS1="$PS1"'\D{%T} '            # HH:MM:SS
PS1="$PS1"'\[\033[36m\]'       # change to teal
PS1="$PS1"'\W'                 # current working directory
if test -z "$WINELOADERNOEXEC"
then
	GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
	COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
	COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
	COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
	if test -f "$COMPLETION_PATH/git-prompt.sh"
	then
		. "$COMPLETION_PATH/git-completion.bash"
		. "$COMPLETION_PATH/git-prompt.sh"
		PS1="$PS1"'\[\033[36m\]'  # change color to cyan
		PS1="$PS1"'`__git_ps1`'   # bash function
	fi
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\$ '                # prompt: # if UID 0, otherwise $
