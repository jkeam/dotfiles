# Dotfiles

Collection of my dotfiles.

## Programs to install

1. Sublime

    ```shell
    ln -s  /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
    ```

2. Homebrew (OSX only)

3. Chruby and ruby-install

4. Setup new ssh keys

5. Install golang

6. Install rust and cargo

7. Neovim

    ```shell
    # Remap esc to caps lock
    :PlugInstall
    yarn global add dockerfile-language-server-nodejs intelephense
    mkdir ~/.config/neovide
    cp ./neovide.toml ~/.config/neovide/config.toml
    ```

8. Install Alacritty

    ```shell
    mkdir ~/.config/alacritty
    cp ./alacritty.toml ~/.config/alacritty/
    ```

## CoC

1. [Ale vs CoC](https://blog.ffff.lt/posts/ale-deoplete-languageclient-vs-coc/)
2. [LSP](https://github.com/neoclide/coc.nvim/wiki/Language-servers#java)
3. [CoC](https://git.lmburns.com/dotfiles/raw/.config/nvim/coc-settings.json)
4. [CoC](https://github.com/Gee19/dotfiles/blob/master/coc-settings.json)
