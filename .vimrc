" Vim Configuration File:

""""""""""""""""""""
" Better Editing UI:
""""""""""""""""""""
" Number of lines to use for the command line:
set cmdheight=1
" Number of screen lines to use for the command line window:
set cmdwinheight=6
" Highlight the text line of the cursor:
set nocursorline
" Tell equalalways when to be applied ('equalalways'/'ea', 'noequalalways'/'noea'
set equalalways
" Show characters to display different types of tab:
set nolist
" Enable line numbers:
set number
" Space between line numbers & left border of window:
set numberwidth=1
" Make line numbers relative to cursor location:
"set relativenumber
" When & how to draw the signcolumn:
set signcolumn=auto

"""""""""""""""""""""""""
" Better Editing Options:
"""""""""""""""""""""""""
" Copy indent from current line when starting a new line:
set autoindent
" If file is changed outside of vim while open in vim, automatically read the file again:
set autoread
" Enable automatic C program indenting:
set cindent
" Help Vim clipboard & system clipboard play nicer together:
set clipboard=unnamedplus
" Use spaces instead of a 'tab':
set expandtab
" Case insensitive searching UNLESS /C or calpital is in search:
set ignorecase
" Enable mouse support: (Can do by mode, or all with 'a')
set mouse=a
" Number of spaces to use for (auto)indent steps:
set shiftwidth=4
" Number of spaces that <Tab> counts for while editing:
set softtabstop=-1
" Override the ignorecase option if containing uppercase characters:
set smartcase
" 
set smarttab
" Number of spaces that <Tab> counts for:
set tabstop=4
" Max width of text that is being inserted:
set textwidth=100
" Wrap lines longer than the window:
set wrap

"""""""""""""""""""""""
" Buffer & Tab Options:
"""""""""""""""""""""""
" What to do if buffer is no longer visible: (hide, unload, delete, or wipe)
"set bufhidden
" Show buffer list:
set buflisted
" Raise dialog asking to save unsaved changes to buffer when leaving:
set confirm
" 
set splitbelow
"
set splitright

""""""""""""""""""""""""
" Undo & Backup Options:
""""""""""""""""""""""""
" Make a backup before overwriting a file:
set nobackup
" Use a swapfile for the buffer:
set noswapfile
" Automatically save undo history to an undo file when writing a buffer to a file:
"set undofile
" Make a backup before overwriting a file, then deleting it once successfully written:
set nowritebackup

"""""""
" Misc:
"""""""
syntax enable

""""""""""
" Keymaps:
""""""""""
"" Remapping Escaping Modes:
imap jk <Esc>

"" Navigating Splits:
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"" Switching Split Types:
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K
