My personal dotfiles.

# Prerequisites
1. Make sure `zsh` is the shell of choice.
```sh
sudo pacman -S zsh
chsh -s /bin/zsh
```
2. Install the following dependencies via package manager of your choice (I use pacman cuz archlinux *btw*)
    - `chezmoi`
    - `neovim-nightly-bin` *(must be installed via AUR or yay for the nightly version)*
    - `starship`
    - `lazygit`
    - `yazi`
    - `zellij`
    - `bat`
    - `tealdeer`
    - `zoxide`
    - `eza`
    - `ripgrep`
    - `fzf`
    - `atuin`
```sh
sudo pacman -S chezmoi starship lazygit yazi zellij bat tealdeer zoxide eza ripgrep fzf atuin
yay -S neovim-nightly-bin
```
3. Install the following manually (or via scripts)
    - `zap`
    - `asdf-vm`
```sh
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
```
```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
```
4. clone repo
5. Run `chezmoi`
```sh
chezmoi apply
```
