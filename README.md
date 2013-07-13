# Cubuntu Colorscheme for Vim

## Summary
This color scheme based on the Ubuntu colors (brown, red and orange).
You can pick between a dark anda light versions (GUI and 256 color terminal).
A colorscheme for the[ Powerline](https://github.com/cubuntu/vim-powerline/network)
plugin is also integrated.

## Description
The color scheme is dark, by default. You can change this by setting the
`g:cubuntu_style` variable to "light" or "dark". Once the color scheme is
loaded, you can use the commands `CubuntuLight` or `CubuntuDark` to change
schemes quickly.

## Installation
You can use [pathogen.vim](https://github.com/tpope/vim-pathogen) for a
simple installation or you go the old fashion way:

1. Clone the repository

  ```bash
  git clone git://github.com/cange/vim-theme-cubuntu.git
  cd vim-theme-cubuntu/
  ```
2. Create a simlink to your Vim directory

  ```bash
  ln -s colors/cubuntu.vim ~/.vim/colors/
  ```
3. Put this line in your `.vimrc` file

  ```bash
  colorscheme cubuntu
  ```
4. Restart Vim


## TODOs
- adjust 256 based colors
- add some screenshots

## Extras

![dark colors for iTerm 2](https://github.com/cange/vim-theme-cubuntu/blob/master/extras/Cubuntu%20dark.itermcolors)
