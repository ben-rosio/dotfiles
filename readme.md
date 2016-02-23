Dotfiles
========

Installation
------------
Dotfiles managed by [fresh](http://freshshell.com).

```bash
FRESH_LOCAL_SOURCE=ben-rosio/dotfiles bash -c "`curl -sL get.freshshell.com`"
```

Post Installation
-----------------

```bash
# configure syntax linting/completion
pushd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
# ./install.sh
./install.py --clang-completer --omnisharp-completer --gocode-completer --tern-completer --racer-completer
popd

# Markdown preview support
pushd ~/.vim/bundle/tern_for_vim/
npm install
popd

npm install -g instant-markdown-d


yum install -y xdg-utils

# Taskwarrior integrations
pip install https://github.com/tbabej/tasklib/archive/develop.zip

# Mac OS tmux fix
brew install 'reattach-to-user-namespace'

# Vim wiki markdown to HTML
gem install vimwiki_markdown
```

Extras
------

### Make Terminal start tmux session
```sh
# Use as command to start new bash environment in terminal preferences:
/usr/bin/env tmux new-session
```
