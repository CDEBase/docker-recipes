#!/usr/bin/env bash
service ssh start

# Get environment variables to show up in SSH session
eval $(printenv | awk -F= '{print "export " $1"="$2 }' >> /etc/profile)

eval "$(rbenv init -)"
rbenv global 2.3.3
/opt/startup.sh "$@"

