#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then

  echo 'Adding homebrew users group'

  let n=`sudo dscl . -list /Groups PrimaryGroupID | awk '{print $NF}' | sort -n | tail -1`

  GROUP_ID=$(( n += 1 ))
  GROUP_NAME=brew

  sudo dscl . create /Groups/$GROUP_NAME
  sudo dscl . create /Groups/$GROUP_NAME PrimaryGroupID $GROUP_ID
  sudo dscl . create /Groups/$GROUP_NAME RealName "Homebrew Users"
  sudo dscl . create /Groups/$GROUP_NAME GroupMembership `whoami`

  echo 'Applying homebrew group to homebrew files'

  sudo chgrp -R brew /usr/local
  sudo chmod -R g+w /usr/local
  sudo chgrp -R brew /Library/Caches/Homebrew
  sudo chmod -R g+w /Library/Caches/Homebrew

fi
