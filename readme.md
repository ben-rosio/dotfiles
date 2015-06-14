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
./install.sh
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
brew install 'reattach-to-user-namespace
```
