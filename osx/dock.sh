#!/bin/sh
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "$HOME/Applications/Google Chrome.app"
dockutil --no-restart --add "$HOME/Applications/iTerm.app"
dockutil --no-restart --add "$HOME/Applications/Slack.app"
dockutil --no-restart --add "$HOME/Applications/Atom.app"
dockutil --no-restart --add "$HOME/Applications/Spotify.app"

killall Dock
