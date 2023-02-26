## Update
sudo apt -y update && sudo apt -y upgrade

## Install basics
sudo apt-get install -y htop vim tmux jq ncdu pigz sudo pv unzip curl wget git

## Install ZSH
sudo apt -y install zsh

## Install Oh My ZSH
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Install packages needed for pyenv
sudo apt-get install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

## Install pyenv
## https://github.com/pyenv/pyenv#basic-github-checkout
curl https://pyenv.run | bash

## Add pyenv to path if it does not exist
LINE='export PYENV_ROOT="$HOME/.pyenv"'

CONTENTS='export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"'

FILE=~/.zshrc

# Check if line exists, if it does not, add contents to file
grep -qF -- "$LINE" "$FILE" || echo "$CONTENTS" >> "$FILE"

## Install Gnome tweaks for disabling windows key
sudo apt-get install -y gnome-tweaks

## Install github cli
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

## Install rust
# https://www.rust-lang.org/tools/install
curl https://sh.rustup.rs -sSf | sh -s -- -y

## Install SDKMan
# https://sdkman.io/
curl -s "https://get.sdkman.io" | bash 
source "$HOME/.sdkman/bin/sdkman-init.sh"

## Install JDK
# https://sdkman.io/jdks
sdk install java 19.0.2-zulu

## Install kotlin
sdk install kotlin

## Install scala
sdk install scala

## Install sbt
sdk install sbt

## Install fuzzy finder
# https://github.com/junegunn/fzf
sudo apt install -y fzf


## Install Docker Engine
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

