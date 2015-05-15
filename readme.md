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
bash ~/.vim/bundle/YouCompleteMe/install.sh

pushd ~/.vim/bundle/tern_for_vim/
npm install
popd

npm install -g instant-markdown-d
yum install -y xdg-utils

pip install https://github.com/tbabej/tasklib/archive/develop.zip
```
