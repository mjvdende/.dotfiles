#!/bin/sh
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "$HOME/Applications/Google Chrome.app"
dockutil --no-restart --add "$HOME/Applications/iTerm.app"
dockutil --no-restart --add "$HOME/Applications/Slack.app"

killall Dock
