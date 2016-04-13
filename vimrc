 " Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-session'
NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'guns/vim-clojure-static'
" Makes vim slow as hell on java files
NeoBundle 'tpope/vim-leiningen'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'linuxfreakus/DBGp-Remote-Debugger-Interface'
NeoBundle 'aszlig/vimerl'
"NeoBundle 'vim-scripts/paredit.vim'
NeoBundle 'fishcakez/vim-rebar'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'vim-scripts/a.vim'
NeoBundle 'tpope/vim-sexp-mappings-for-regular-people'
"NeoBundle 'guns/vim-sexp'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'


 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 syntax enable
cmap w!! w !sudo tee > /dev/null %

  " number of visual spaces per TAB
  set tabstop=2

  set shiftwidth=2

  " number of spaces in tab when editing
  set softtabstop=2

  " tabs are spaces
  set expandtab
