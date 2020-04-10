# for file in ~/.{exports,aliases,functions,extra,colors}; do
#     print "Loading $file"
#     [ -r "$file" ] and [ -f "$file" ] and source "$file";
# done;
# unset file;

# for file in ~/.{exports,extra,colors}
#     echo "$file"
#     if test -n $file
#       source $file
#     end
# end

# Load asdf
#source /usr/local/Cellar/asdf/*/asdf.fish
source ~/.asdf/asdf.fish

# Load asdf-java
sh ~/.asdf/plugins/java/asdf-java-wrapper.bash

# Load SPM completions
#sh ~/.swift-package-complete.bash

# old rbenv config
#status --is-interactive; and source (rbenv init -|psub)

# Load ENV vars from file
export (cat ~/.env | xargs -L 1)

if test $TERM_PROGRAM = iTerm.app
    test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
end

set JAVA_HOME ~/.asdf/installs/java/openjdk-11.0.1/Contents/Home/bin

set -U fish_key_bindings fish_default_key_bindings #fish_vi_key_bindings

# TODO: move to a different file
# if not set LC_ALL
#   set -x LC_ALL en_GB.UTF-8
# end
# if not set LC_CTYPE
#   set -x LC_CTYPE en_GB.UTF-8
# end

if not set -q abbrs_initialized
  set -U abbrs_initialized
  echo -n Setting abbreviations... 

  abbr x 'xed .'
  abbr g 'git'
  abbr ga 'git add'
  abbr gb 'git branch'
  abbr gbl 'git blame'
  abbr gc 'git commit -m'
  abbr gco 'git checkout'
  abbr gcp 'git cherry-pick'
  abbr gd 'git diff'
  abbr gf 'git fetch'
  abbr gl 'git log'
  abbr gm 'git merge'
  abbr gp 'git push'
  abbr gpl 'git pull'
  abbr gr 'git remote'
  abbr gs 'git status'
  abbr gst 'git stash'

  echo 'Done'
end