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

 NeoBundle 'fatih/vim-go'
 NeoBundle 'sonictemplate-vim'

call neobundle#end()


 filetype off
 filetype plugin indent off
 set runtimepath+=$GOROOT/misc/vim
 filetype plugin indent on
 syntax on
 exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
 set completeopt=menu,preview

 colorscheme molokai
