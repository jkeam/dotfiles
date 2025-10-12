# Dotfiles

Collection of my dotfiles.

## Programs to install

1. Sublime

    ```shell
    ln -s  /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
    ```

2. Homebrew (OSX only)

3. Chruby and ruby-install

4. Install yarn

5. Setup new ssh keys

6. Install golang

7. Install rust and cargo

8. Neovide

    ```shell
    # Remap esc to caps lock
    :PlugInstall
    yarn global add dockerfile-language-server-nodejs intelephense
    mkdir ~/.config/neovide
    cp ./neovide.toml ~/.config/neovide/config.toml
    ```

9. Neovim

    ```shell
    mkdir ~/.config/nvim
    # for ale
    cp ./.vimrc ~/.config/nvim/init.vim
    # or for coc
    # cp ./init_coc.vim ~/.config/nvim/init.vim
    # cp ./coc-settings.json ~/.config/nvim/coc-settings.json
    cd /home/jkeam/.local/share/nvim/plugged/coc.nvim
    yarn install && yarn build
    ```

10. Install Alacritty

    ```shell
    mkdir ~/.config/alacritty
    cp ./alacritty.toml ~/.config/alacritty/
    ```

11. Install ghostty

    ```shell
    mkdir ~/.config/ghostty
    # make backup
    mv ~/.config/ghostty/config ~/.config/ghostty/config.bak
    # notice the file gets renamed to config
    cp ./ghostty ~/.config/ghostty/config
    ```

## CoC

1. [Ale vs CoC](https://blog.ffff.lt/posts/ale-deoplete-languageclient-vs-coc/)
2. [LSP](https://github.com/neoclide/coc.nvim/wiki/Language-servers#java)
3. [CoC](https://git.lmburns.com/dotfiles/raw/.config/nvim/coc-settings.json)
4. [CoC](https://github.com/Gee19/dotfiles/blob/master/coc-settings.json)
