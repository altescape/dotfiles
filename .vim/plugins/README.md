## Plugins

#### Bclose

The :Bclose command deletes a buffer without changing the window layout. For each window where the buffer is currently displayed:

`:ls` lists buffers which outputs:
```
  1   =  "~/.bash_profile"              line 1
  3 #    "gruntfile.js"                 line 1
  4 %a   "bower.json"                   line 1
  ```
  

* Show the alternate buffer (:buffer #), if any.
* Otherwise, show the previous buffer (:bprevious), if any.
* Otherwise, show an empty buffer.

```
:Bclose
```
Close buffer in current window.

```
:Bclose N
```
Close buffer number N (as shown by `:ls`).

```
:Bclose Name
```
Close buffer named Name (as shown by `:ls`).

Assuming the default backslash leader key, you can also press `\bd` to close (delete) the buffer in the current window (same as `:Bclose`).

Like the :bdelete command, `:Bclose` will fail if the buffer has been modified. You can append ! to discard all changes (for example, `:Bclose!` will delete the buffer in the current window; any changes to the buffer are lost).

By default, `:Bclose` will close a buffer even if it is displayed in multiple windows (the windows are not closed). Put the following in your vimrc if you would prefer that a buffer is not closed if it is displayed more than once:

```
:let bclose_multiple = 0
```
