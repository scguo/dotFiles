# scguo’s dotfiles

## Installation
**Caveat:** I have no idea what I'm doing so be careful! :confused:

### Git
```bash
git clone https://github.com/scguo/dotfiles.git
```

### !Git
```bash
cd; curl -#L https://github.com/scguo/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,LICENSE}
```

### Customization
`~/.extra`:
```bash
GIT_AUTHOR_NAME="Steve Guo"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="steve.guo@carleton.ca"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## Critique
Suggestions/improvements
[welcome](https://github.com/scguo/dotfiles/issues)! :wave:

## Reposter
| [![twitter/newThrow](https://www.gravatar.com/avatar/5ec764f97028b18efebe516fab033f73?s=64)](http://twitter.com/newthrow "Follow @scguo on Twitter") |
|---|
| [scguo](https://scguo.github.io) |

## Sauce
* **Heavily inspired** by [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles). *I recommend just using his* :stuck_out_tongue_winking_eye:
* [Phil Haack](https://github.com/haacked)'s [GitHub Flow Like a Pro with these 13 Git Aliases](http://haacked.com/archive/2014/07/28/github-flow-aliases/)
* Bash Prompt [Colours](http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html)
* [AutoHotkey](https://autohotkey.com/) [closing thingy](https://autohotkey.com/board/topic/80697-long-keypress-hotkeys-wo-modifiers/)
* [ConsoleZ](https://github.com/cbucher/console)
