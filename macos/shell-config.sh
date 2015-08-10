# Fixes screen captures having shadows between monitors and the like
defaults write com.apple.screencapture disable-shadow -bool true

# Fixes finder preview showing blank
defaults write com.apple.finder QLEnableTextSelection -bool true

# Don't change space when app gains focus
defaults write com.apple.Dock workspaces-auto-swoosh -bool false
