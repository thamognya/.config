set fish_greeting ""

set -gx TERM xterm-256color

neofetch

#vi mode
fish_vi_key_bindings

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
source (dirname (status --current-filename))/aliasrc.sh
source (dirname (status --current-filename))/conda.fish
# source "$HOME/.cargo/env"

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH fish_add_path /opt/homebrew/opt/curl/bin $PATH
set -gx LDFLAGS "-L/opt/homebrew/opt/curl/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/curl/include"
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/curl/lib/pkgconfig"
set -gx PATH /opt/homebrew/opt/openjdk/bin $PATH
set -gx CPPFLAGS "-I/opt/homebrew/opt/openjdk/include"
set -gx PATH $HOME/.cargo/bin $PATH
set -gx VAGRANT_DEFAULT_PROVIDER qemu $VAGRANT_DEFAULT_PROVIDER
set -gx PATH /opt/homebrew/opt/postgresql@15/bin $PATH
set -gx LDFLAGS "-L/opt/homebrew/opt/postgresql@15/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/postgresql@15/include"
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/postgresql@15/lib/pkgconfig"

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
