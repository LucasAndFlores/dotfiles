if status is-interactive
    # Initialize tools
    starship init fish | source
    zoxide init fish --cmd cd | source
end

# Environment variables
set -gx XDG_RUNTIME_DIR /run/user/(id -u)
set -gx DBUS_SESSION_BUS_ADDRESS "unix:path=$XDG_RUNTIME_DIR/bus"
set -gx ZOXIDE_CMD_OVERRIDE cd
# GH_TOKEN: set this here or via `set -Ux GH_TOKEN <value>` to persist universally
# set -gx GH_TOKEN <your-token>
set -gx EDITOR nvim

set -gx AWS_REGION us-east-1
set -gx AWS_PROFILE saml

## gcloud variables
set -x CLAUDE_CODE_USE_VERTEX 1
set -x CLOUD_ML_REGION global
set -x ANTHROPIC_VERTEX_PROJECT_ID itpc-gcp-hcm-pe-eng-claude

## Go variables
set -x GOPATH ~/go
set -x PATH $GOPATH/bin $PATH

# PATH — fish_add_path avoids duplicates and persists across sessions
#fish_add_path $HOME/google-cloud-sdk/bin
fish_add_path $HOME/.local/bin
#fish_add_path (go env GOPATH)/bin
#fish_add_path $HOME/.local/share/nvm/v24.14.0/bin
nvm use lts --silent

# Google Cloud SDK — source fish-specific path/completion if available
if test -f $HOME/google-cloud-sdk/path.fish.inc
    source $HOME/google-cloud-sdk/path.fish.inc
end

# NVM: fish cannot source bash scripts directly.
# Install nvm.fish via fisher: fisher install jorgebucaran/nvm.fish
# Then use: nvm install lts, nvm use lts, etc.
# If you need bass for bash-script compat: fisher install edc/bass
# bass source /usr/share/nvm/init-nvm.sh
