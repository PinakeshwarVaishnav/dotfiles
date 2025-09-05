if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx PNPM_HOME /home/pinakeshwar/.local/share/pnpm
fish_add_path $PNPM_HOME
