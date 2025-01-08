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

8. Neovim

    ```shell
    # Remap esc to caps lock
    :PlugInstall
    yarn global add dockerfile-language-server-nodejs intelephense
    mkdir ~/.config/neovide
    cp ./neovide.toml ~/.config/neovide/config.toml
    ```

9. Install Alacritty

    ```shell
    mkdir ~/.config/alacritty
    cp ./alacritty.toml ~/.config/alacritty/
    ```

10. Install ghostty

    ```shell
    mkdir ~/.config/ghosttty
    # notice the file gets renamed to config
    cp ./ghostty ~/.config/ghostty/config
    ```

## CoC

1. [Ale vs CoC](https://blog.ffff.lt/posts/ale-deoplete-languageclient-vs-coc/)
2. [LSP](https://github.com/neoclide/coc.nvim/wiki/Language-servers#java)
3. [CoC](https://git.lmburns.com/dotfiles/raw/.config/nvim/coc-settings.json)
4. [CoC](https://github.com/Gee19/dotfiles/blob/master/coc-settings.json)
