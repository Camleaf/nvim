cd ~
if [ ! -d "~/Programs" ]; then
    mkdir Programs
fi
cd Programs

if [ ! -d "./neovim" ]; then
    git clone https://github.com/neovim/neovim
    cd neovim
    git checkout stable
    make CMAKE_BUILD_TYPE=RelWithDebInf
    sudo make install
fi
