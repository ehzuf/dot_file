# Config Vim from Zero

> usage:

```
ln -s ~/Dropbox/others/dot_file/.vimrc ~/.vimrc
```


## 1. Installation of vim-pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Add this to your vimrc:

```
execute pathogen#infect()
```

## 2. Tagbar

```
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar.git
```

Add this to your vimrc:

```
" Tagbar setting
nnoremap <F3> :TagbarToggle<CR>
```


## 3. NERD Tree

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

## 4. vim-airline
```
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
```

Add this to your vimrc:

```
" airline setting
let g:airline#extensions#tabline#enabled = 1

```

## 5. nerdcommenter
```
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter.git
```


## 6. YouCompleteMe

> not that good for reading linux kernel. **disabled**.

```
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

> Don't forget to install cmake

```
git submodule update --init --recursive
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
let g:loaded_youcompleteme = 1
```
