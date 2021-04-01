"" Neovim Configuration - @sampaioxsamuel - 2021
" <leader> = Space

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins managed by Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
    "" Show a popup with leader mappings - :WhichKey or press <Leader> and wait
    Plug 'liuchengxu/vim-which-key'
    "" Plug 'spinks/vim-leader-guide'

    "" Show rgb and hexa colors :ColorHighlight
    Plug 'chrisbra/Colorizer'

    "" Multi cursor
    " C-N select words, C-move add cur, Shift move single char,
    " n/N Next/Prev - [] next/prev cur, q skip, Q remove cursor
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}

   "" Auto Complete and Language Server
    " Leader-prw = Previewable Refactor Work Under Cursor
    " Leader-df = Do Fix on current error
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "" Git integration
    " Leader-g = Open Line on Git (browser)
    " Leader-gf = List GitFiles
    " Leader-gt  = Show GitStatus
    " Leader-gm  = Show Git Commit Message for Line
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
    Plug 'airblade/vim-gitgutter'
    Plug 'rhysd/git-messenger.vim'
    Plug 'stsewd/fzf-checkout.vim' " The  Primeagen told me to install it.
                                   " C-n (new-branch), C-d (del), C-e (Merge),
                                   " C-r (rebase)
    "" Commenting - gcc, gcap
    Plug 'tpope/vim-commentary'

    "" Show latest changes and allow navigation - Leader-u
    Plug 'mbbill/undotree'

    "" Object/AST tag bar - F4
    Plug 'majutsushi/tagbar'

    "" Linter
    Plug 'w0rp/ale'

    "" Show the visual mark on indendation blocks ┆
    Plug 'Yggdroot/indentLine'

    "" Syntax Highlighting
    Plug 'sheerun/vim-polyglot'

    "" Rainbow match pairs
    Plug 'frazrepo/vim-rainbow'

    "" Colorize the copied block
    Plug 'machakann/vim-highlightedyank'

    "" Shows search counts
    Plug 'google/vim-searchindex'

    "" Highlight word under cursor
    "" Plug 'RRethy/vim-illuminate'

    "" Leader-k add highlight, n/N next/prev, Leader-K cleans.
    Plug 'lfv89/vim-interestingwords'

    "" Fade inactive buffers
    Plug 'blueyed/vim-diminactive'

    "" Fuzzy Search 
    " Leader-ps = Previewable Search
    " Leader-pw = Previewable Search Word under cursor
    " Leader-f = Files on dir
    " Leader-s = Search on buffer
    " Leader-l = Search on all buffers
    " Leader-b = Show all buffers
    " Leader-w = Show all windows
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }

    " Dispatch tasks to run async e.g: `:Dispatch PlugInstall`
    Plug 'tpope/vim-dispatch'

    " Manipulate surrounding chars such as quotes and brackets
    " Asuming | as a cursor
    " fo|o - ysiw' - 'foo'
    " 'fo|o' - ds' - foo
    " 'fo|o' - cs'" - "foo"
    Plug 'tpope/vim-surround'

    " Auto Format - :Neoformat black|isort
    Plug 'sbdchd/neoformat'

    " Interactive command execution
    let g:make = 'gmake'
    if exists('make')
            let g:make = 'make'
    endif
    Plug 'Shougo/vimproc.vim', {'do': g:make}

    "" Vim-Session
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'

    "" Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    "" Status and tab bar
    "" Plug 'vim-airline/vim-airline'
    "" Plug 'vim-airline/vim-airline-themes'

    Plug 'itchyny/lightline.vim'

    "" Auto close/match brackets
    Plug 'Raimondi/delimitMate'

    "" A lot of colorschemes
    Plug 'flazz/vim-colorschemes'

    "" DEvicons for trees and bars
    Plug 'ryanoasis/vim-devicons'

    "" File Manager - F3 - `s` open on split
    " Plug 'preservim/nerdtree'
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

    "" Auto complete navigation with tab
    Plug 'ervandew/supertab'

    "" SQL Stuff
    " Plug 'tpope/vim-dadbod'
    " Plug 'kristijanhusak/vim-dadbod-ui'

    "" Move windows in a good way using C-wg-hjkl
    Plug 'andymass/vim-tradewinds'

    "" Command to show leader commands - :Bufferize Leaders
    Plug 'derekprior/vim-leaders'

    "" text moving (Select a text and Alt-hjkl)
    Plug 'matze/vim-move'

    "" File/Buffer operations :Rename, :Move, :Delete, :Chmod, :SudoEdit
    Plug 'tpope/vim-eunuch'

    "" Delete instead of cut (cut is mapped to x, single char is dl)
    Plug 'svermeulen/vim-cutlass'

    "" HTML magic - Ctrl-y
    Plug 'mattn/emmet-vim'

    "" Create gist with :Gist -c
    Plug 'mattn/gist-vim'
    Plug 'mattn/webapi-vim'

    "" Make me dirs when saving a full path
    Plug 'pbrisbin/vim-mkdir'

    "" Better repeatable f/t searching
    Plug 'rhysd/clever-f.vim'

    "" `dsf`  deletes surrounding function `csf` change it
    Plug 'AndrewRadev/dsf.vim'

    "" `cxiw` exchange 2 words `cxx` exchange 2 line (cxc cleans marks)
    Plug 'tommcdo/vim-exchange'

    "" After a visual selection use + and - to expand it
    Plug 'landock/vim-expand-region'

    "" Sets working dir automatically
    Plug 'airblade/vim-rooter'

    "" Scratch `gs`
    Plug 'mtth/scratch.vim'

    "" Split window based on visual selection
    " C-W-gsa creates a split above with the selection C-W-gss on right
    " CW-gr resizes to selection
    Plug 'wellle/visual-split.vim'

    "" Horizon theme
    Plug 'ntk148v/vim-horizon'

"" End of plugin management
call plug#end()

"" Configuration
syntax on                       " Enable defautl highlight
filetype plugin indent on       " Enable filetype detection
                                " for plugin and indentation

set number relativenumber       " Show line numbers, relative mode
set hidden                      " Allow multiple hidden buffers
set noerrorbells                " Don't play sound on error
set tabstop=2 softtabstop=2     " Tabs to spaces
set shiftwidth=2                " Indent width when using <>
set expandtab                   " Automatically turn tab to space
                                " USe Ctrl+V tab to insert a real tab
set smartindent                 " Detect file indentation
set smartcase                   " Smart case on search
set ignorecase                  " Ignore case on search
set noswapfile                  " Don't write swap files
set nobackup                    " Don't make backups
set undodir=~/.vim/undodir      " Where to save undo history
set undofile                    " Enable the undo saving
set incsearch                   " Start searching before enter is pressed
set termguicolors               " Enable 24 bit colors
set scrolloff=8                 " Scroll line offser kept above cursor
set noshowmode                  " Don't print mode in status line
set encoding=utf-8              " default encoding for buffers
set fileencoding=utf-8          " default encoding for files
set fileencodings=utf-8         " same as above but it is a list
set backspace=indent,eol,start  " Backspace/Ctrl-H settings
set hlsearch                    " Highlight all search matches
set fileformats=unix,dos,mac    " file formats
set nowritebackup               " No backup before write
set splitbelow                  " :split creates below window
set splitright                  " :vspclit creates right window
set noequalalways               " Don't change window sizes when opening new
set updatetime=50               " Makes things faster
set shortmess+=c                " Don't pass messages to |ins-completion-menu|.
set mousemodel=popup            " Mouse right click opens term menu (if exists)
set mouse=a                     " Mouse enabled in all modes/features
set t_Co=256                    " Something about tmux and colors :/
set clipboard=unnamedplus

"" Sessions
let g:session_autoload = 'no'


"" Brackets
let g:rainbow_active = 1        " rainbow brackets enabled


"" Theme
set background=dark                        " Set global background to dark
colorscheme horizon


"" Lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'
