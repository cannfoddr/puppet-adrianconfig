#!/bin/bash

/usr/local/bin/dockutil --remove all --no-restart
/usr/local/bin/dockutil --add '/Applications/Google Chrome.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Sublime Text 2.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/iTerm.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Tweetbot.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/IRC Cloud.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Slack.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Sunrise.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/VMware Fusion.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/GitHub.app' --no-restart
/usr/local/bin/dockutil --add '~/Downloads' --view automatic --display stack --sort dateadded