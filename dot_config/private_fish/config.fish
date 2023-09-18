if status is-interactive
end
fish_vi_key_bindings
fish_add_path /home/pubudu/.spicetify

# pnpm
set -gx PNPM_HOME "/home/pubudu/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
source "/home/pubudu/dev/emsdk/emsdk_env.fish" >> /dev/null
clear
