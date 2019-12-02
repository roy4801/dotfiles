set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Interface
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'

" Language
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'zxqfl/tabnine-vim'

" Color
Plugin 'erichdongubler/vim-sublime-monokai'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" powerline config "
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
" 
let g:minBufExplForceSyntaxEnable = 1

" python
if has('vim')
  let g:python_host_prog  = '/usr/local/bin/python2'
  let g:python3_host_prog = '/usr/local/bin/python3'
endif

" 
syntax on
color sublimemonokai
set termguicolors     " True color if terminal supported
set guifont=Source_Code_Pro_for_Powerline:h12
set guioptions+=aiAe
set nu ts=4 sw=4 sts=4 et ai si cin hls ru t_Co=256
set mouse=a bs=2 ci nocp ar fencs=utf-8
set sm mat=0

" Key mappings "
imap {<CR>  {<CR>}<Esc>O

"" swap line
nmap <C-k> <Up>ddp<Up>
nmap <C-j> ddp

" ref: https://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-in-vim
vmap <C-c> "*y

" search for visually hightlighted text
vnoremap <c-f> y<ESC>/<c-r>"<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
