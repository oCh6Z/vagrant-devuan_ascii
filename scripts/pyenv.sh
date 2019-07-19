InstallPyenv () {
    apt -y -qq install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libterm-readline-gnu-perl libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev python-openssl git 2>/dev/null
    apt -y -qq install --no-install-recommends libedit-dev 2>/dev/null
    apt -y -qq install --no-install-recommends libssl-dev 2>/dev/null
    apt -y -qq install --no-install-recommends libssl1.0-dev 2>/dev/null
    curl https://pyenv.run | bash 2>/dev/null
    echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
}
