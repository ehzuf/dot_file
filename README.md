# Configure Environment from Zero

> usage:

```
sh ./setup.sh
```

## Basic installation

```
apt-get install vim tmux zsh git wget tree htop exuberant-ctags
```

## oh-my-zsh

```
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
> use zsh theme `candy`


## Vim

### 1. vim-pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Add this to your vimrc:

```
execute pathogen#infect()
```

### 2. Tagbar

```
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar.git
```

Add this to your vimrc:

```
" Tagbar setting
nnoremap <F3> :TagbarToggle<CR>
```


### 3. NERD Tree

```
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
```

Add this to your vimrc:

```
" NERD_tree setting
let NERDTreeWinSize=20
" let NERDTreeWinPos="right"
let NERDTreeAutoCenter=1
let NERDTreeHighlightCursorline=1
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
nnoremap <F4> :NERDTreeToggle<CR>
```

### 4. vim-airline
```
cd ~/.vim/bundle
git clone https://github.com/bling/vim-airline
```

Add this to your vimrc:

```
" airline setting
let g:airline#extensions#tabline#enabled = 1

```

### 5. nerdcommenter
```
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter.git
```


Add this to your vimrc:
```
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
```

> basic usage:

```
[count]<leader>cc |NERDComComment|

Comment out the current line or text selected in visual mode.

[count]<leader>cn |NERDComNestedComment|

Same as cc but forces nesting.

[count]<leader>c<space> |NERDComToggleComment|

Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.

```


### 6. vim-signature
```
cd ~/.vim/bundle
git clone https://github.com/kshenoy/vim-signature.git
```

> usage:

```
  mx           Toggle mark 'x' and display it in the leftmost column
  dmx          Remove mark 'x' where x is a-zA-Z

  m,           Place the next available mark
  m.           If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
  m-           Delete all marks from the current line
  m<Space>     Delete all marks from the current buffer
  ]`           Jump to next mark
  [`           Jump to prev mark
  ]'           Jump to start of next line containing a mark
  ['           Jump to start of prev line containing a mark
  `]           Jump by alphabetical order to next mark
  `[           Jump by alphabetical order to prev mark
  ']           Jump by alphabetical order to start of next line having a mark
  '[           Jump by alphabetical order to start of prev line having a mark
  m/           Open location list and display marks from current buffer

  m[0-9]       Toggle the corresponding marker !@#$%^&*()
  m<S-[0-9]>   Remove all markers of the same type
  ]-           Jump to next line having a marker of the same type
  [-           Jump to prev line having a marker of the same type
  ]=           Jump to next line having a marker of any type
  [=           Jump to prev line having a marker of any type
  m?           Open location list and display markers from current buffer
  m<BS>        Remove all markers
```


### 7. YouCompleteMe

> not that good for reading linux kernel. **disabled**.

```
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

> Don't forget to install `cmake`

install submodules: 

```
git submodule update --init --recursive
```

For Ubuntu/Debian, compiling is not needed.
```
apt-get install vim-addon-manager vim-youcompleteme
vim-addon-manager install youcompleteme
```

Add this to your vimrc:

```
" YCM setting
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
" nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmDiags<CR>
" disable YCM start up automatically
" let g:loaded_youcompleteme = 1
```
