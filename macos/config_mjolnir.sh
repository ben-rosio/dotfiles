#!/usr/bin/env bash

brew install lua
echo 'rocks_servers = { "http://rocks.moonscript.org"  }' >> /usr/local/etc/luarocks52/config-5.2.lua
luarocks install mjolnir.application mjolnir.hotkey
luarocks install mjolnir.sd.grid

brew cask install mjolnir
