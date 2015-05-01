This repo contains runcom and profile files for Vim, Bash etc. but is primarily for my Vim setup.
Includes colours and plugins installed with vundle.


# Vim

## Run a terminal command within vim

Typing `:!<command>` will open a console window

## Pause vim to go to terminal and then resume vim

Pause Vim with `Ctrl+z`, play in the terminal, then return to Vim with the command `fg`.


## Fix formatting

Select a block of text and press `=` to fix formatting




## Marks

### Set your marks

`ma` set a mark called referenced with a

`mz` set a mark referenced with z

### Jump to your marks

`` `a `` jump to mark `a`

`` `z `` jump to mark `z`

### Jump to start of line of your marks

`'a` jump to start of line for mark `a`

`'z` jump to start of line for mark `z`




## Insert text on multiple lines

Hit `Ctrl+v` to select a column then `shift+I` to enter the text. Press `Esc` shows inserted text.




## Copying and pasting

Copy word (when cursor is anywhere within word) with `yiw`

Paste text and replace word with `viwp`



## Insert linebreak without going into insert mode

By adding the following lines to the .vimrc file

```
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
```

We can hit `shift+enter` whilst in normal mode.




