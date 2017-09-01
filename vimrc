set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-abolish'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'vimwiki/vimwiki'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'freitass/todo.txt-vim'
"Plugin 'tmux-plugins/vim-tmux'
"Plugin 'nelstrom/vim-qargs'
"Plugin 'vim-scripts/phpfolding.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'vim-scripts/smarty.vim'
Plugin 'leafgarland/typescript-vim'
"Plugin 'airblade/vim-gitgutter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-unimpaired'
"Plugin 'benmills/vimux'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-surround'
"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-markdown'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'tyru/open-browser.vim'
Plugin 'spf13/piv'
"Plugin 'StanAngeloff/php.vim'
"Plugin 'shawncplus/phpcomplete.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'ap/vim-css-color'
"Plugin 'tpope/vim-vinegar'
"Plugin 'mhinz/vim-startify'
Plugin 'kshenoy/vim-signature'
Plugin 'nono/jquery.vim'
"Plugin 'c.vim'
Plugin 'alvan/vim-closetag'
Plugin 'shutnik/jshint2.vim'
"Plugin 'mtth/scratch.vim'
"Plugin 'ryanoasis/vim-devicons'
"Plugin 'taglist.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
runtime macros/matchit.vim
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

let mapleader = ","
set encoding=utf8
syntax enable
set t_Co=256
"noremap d h
"noremap h j
"noremap t k
"noremap s l
set background=dark
colorscheme sorcerer
" set fdm=syntax
set hls
set list
" set grepprg=ack\ --nogroup\ $*

set nowritebackup
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:·
set hidden
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set ts=4 sts=4 sw=4 expandtab autoindent
set spell
set number
set autoindent ts=4 sts=4 sw=4
autocmd FileType * set expandtab
autocmd FileType make set noexpandtab

" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

nmap <leader>v :tabedit $MYVIMRC<CR>


set mouse=a
set ttyfast
if !has('nvim')
    set ttymouse=xterm2
endif
" set clipboard=unnamed
map <C-n> :NERDTreeToggle<CR>
" map F12 to re-syntax the file
map <F12> <ESC>:syntax sync fromstart<CR>
" mapping for Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
" mapping for Fugitive
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gc :Gcommit<CR>
map <leader>gb :Gblame<CR>
map <leader>gl :Glog<CR>
map <leader>gp :Git push<CR>

" Mapping for easier tab navigation
map <leader>p <esc>:tabprev<CR>
map <leader>n <esc>:tabnext<CR>

" easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Disable the arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Disable the arrow keys in insert mode
"inoremap <Up> <NOP>
"inoremap <Down> <NOP>
"inoremap <Left> <NOP>
"inoremap <Right> <NOP>

" Set F9 for make
:map <f9> :make

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"

" Prevent UltiSnips from removing our carefully-crafted mappings.
let g:UltiSnipsMappingsToIgnore = ['autocomplete']

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Airline Themes
let g:airline_theme='badwolf'

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Disable php folding
"let g:DisableAutoPHPFolding = 1
"let php_folding=0
"map <F5> <Esc>:EnableFastPHPFolds<Cr>
"map <F6> <Esc>:EnablePHPFolds<Cr>
"map <F7> <Esc>:DisablePHPFolds<Cr>

" Auto strip trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e

" setup vim-javascript
"let g:javascript_plugin_jsdoc = 1
"let g:javascript_plugin_flow = 1
"set foldmethod=syntax

" set *.html for smarty templates
" au BufNewFile,BufRead *.html set filetype=smarty
" For saving folding for files
"autocmd BufWinLeave *.* mkview!
"autocmd BufWinEnter *.* silent loadview

" UltiSnips
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" Prevent UltiSnips from removing our carefully-crafted mappings.
let g:UltiSnipsMappingsToIgnore = ['autocomplete']

"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:ycm_key_list_accept_completion = ['<C-y>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

" Additional UltiSnips config.
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsSnippetDirectories = ['UltiSnips']

" Additional YouCompleteMe config.
"let g:ycm_complete_in_comments = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_auto_trigger = 1

" For ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" For vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Open a new tab an search for something.
nmap <leader>a :tab split<CR>:Ack ""<Left>

" Immediately search for the word under the cursor in a new tab
nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_php_checkers = ['php']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
