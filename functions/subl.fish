# SYNOPSIS
#   subl [options] [file ...]        edit the given files
#   subl [options] [directory ...]   open the given directories
#   subl [options]                   edit stdin
#

function subl -d "Open Sublime Text"
  set -l opts
  set -l files
  set -l projects

  # we'll just ignore anything that looks like an option string...
  for file in $argv
    switch $file
      case '-*'
        set opts $opts $file

      case '.*' '*'
        set files $files $file
    end
  end

  # if there's one (and only one) *.sublime-project file in the folder listed, open that instead.
  if [ (count $files) -eq 1 ]
    set projects (find $files[1] -name "*.sublime-project" -maxdepth 1 2> /dev/null)
  end

  if [ (count $projects) -eq 1 ]
    set argv $opts $projects[1]
  end

  if begin; which subl > /dev/null 2>&1; and test -x (which subl); end
    command subl $argv
  else if test -d "/Applications/Sublime Text.app"
    "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" $argv
    else if test -d "/Applications/Desarrollo/Sublime Text.app"
    "/Applications/Desarrollo/Sublime Text.app/Contents/SharedSupport/bin/subl" $argv
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
    echo "No Sublime Text installation found" >&2
    return 1
  end
end
