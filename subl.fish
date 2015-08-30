# SYNOPSIS
#   subl [file]
#

function subl -d "Open Sublime Text"
  if test -d "/Applications/Sublime Text.app"
    "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "/Applications/Sublime Text 2.app"
    "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "/Applications/Sublime Text 3.app"
    "/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "$HOME/Applications/Sublime Text.app"
    eval "$HOME/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "$HOME/Applications/Sublime Text 2.app"
    eval "$HOME/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "$HOME/Applications/Sublime Text 3.app"
    eval "$HOME/Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl" $argv
  else if test -x "/opt/sublime_text/sublime_text"
    "/opt/sublime_text/sublime_text" $argv
  else if test -x "/opt/sublime_text_3/sublime_text"
    "/opt/sublime_text_3/sublime_text" $argv
  else
    echo "No Sublime Text installation found"
  end
end
