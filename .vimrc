 set number

 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 " solarized
 NeoBundle 'altercation/vim-colors-solarized'
 " mustang
 NeoBundle 'croaker/mustang-vim'
 " jellybeans
 NeoBundle 'nanotech/jellybeans.vim'
 " molokai
 NeoBundle 'tomasr/molokai'

 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'ujihisa/unite-colorscheme'
 call neobundle#end()


 " default color koehler
 colorscheme koehler
 if &term =~ "xterm-256color" || "screen-256color"
   set t_Co=256
   set t_Sf=[3%dm
   set t_Sb=[4%dm
 elseif &term =~ "xterm-color"
   set t_Co=8
   set t_Sf=[3%dm
   set t_Sb=[4%dm
 endif

 syntax enable
 hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
