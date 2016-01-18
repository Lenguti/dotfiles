set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'tomtom/tlib_vim'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'tpope/vim-dispatch'
Plugin 'unblevable/quick-scope'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on " syntax highlighting
set relativenumber
set backspace=2 " make backspace work like most other apps
set number " show line numbers
set laststatus=2
set si " smart indent
let g:netrw_liststyle=3 " sets the list style for Netrw
set noshowmode " remove mode from status line when using vim airline
set expandtab " tabs are spaces
set tabstop=2 " number of visual spaces per TAB
set shiftwidth=2 " number of space characters inserted for indentation
set timeoutlen=1000 " used for mapping delays
set ttimeoutlen=0 " used for keycode delays
set incsearch " searches characters as they are entered
set hlsearch " highlight matches
colorscheme jellybeans
let g:molokai_original = 1
set cursorline
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' "show line numbers in Netrw
let g:rspec_command = "call VtrSendCommand('rspec {spec}')"
set noswapfile " Disable swapfile from creating
set wildmenu " visual autocomplete for command menu
let g:airline_theme="murmur"
let g:airline_powerline_fonts = 1

" Mappings
let mapleader = " "
" Git Blame mapping
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
nnoremap <Leader>w :w<CR>
" Open a new file
nnoremap <Leader>o :CtrlP<CR>
" Suspend Vim and Reopen
nnoremap <Leader>z <C-Z><CR>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Switch panes
nnoremap <Leader>ss <C-W>w
" Open related file in split pane with <SPACE> rv
nmap <leader>rv :RV<CR>
" " Open related file in full pane with <SPACE> rr
nmap <leader>rr :R<CR>
" Clear trailing whitespace
nnoremap <Leader>rt :%s/\s\+$//e<CR>
" Open tmux split with irb
nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>
" Focus on tmux runner split
nnoremap <leader>foc :VtrFocusRunner <enter>
" Send lines to tmux split and run
nnoremap <leader>run :VtrSendLinesToRunner <enter>
" Open tmux runner split
nnoremap <leader>trun :VtrOpenRunner <enter>
" Send file to tmux split
nnoremap <leader>tsen :VtrSendFile <enter>
" Drop in Pry to debug. Leader bp
nmap <leader>bp orequire 'pry'; binding.pry<esc>^
" Enter Visual mode with <Space><Space>
nmap <Leader><Leader> V
" Open VIMRC file with <SPACE> vm
nmap <leader>vm :tabedit $MYVIMRC<CR>
" Escape mode with jk
inoremap jk <esc>
" Open related file in split pane with <SPACE> rv
nmap <leader>rv :RV<CR>
" " Open related file in full pane with <SPACE> rr
nmap <leader>rr :R<CR>
" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>
" pastes lines from your clipboard correctly indendted
map <leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

runtime macros/matchit.vim " Jump between method/class openings and closing tags with %

source ~/.vim/rspec " RSpec shortcut commands
