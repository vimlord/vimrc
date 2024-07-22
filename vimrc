
" I prefer my editor to always use four-space tabs
set tabstop=4 " Make tabs show as four spaces
set softtabstop=4 " Makes tab insert four spaces when expanding tabs
set shiftwidth=4 " When a formatter is used by Vim, uses this level of tabs
set expandtab " Makes tab insert the number of spaces defined by softtabstop
set autoindent " Makes indentation remain the same when going to a newline

" I prefer dark mode
set background=dark

" Visual utilities
set number " Line numbers
set ruler " Show position
set showcmd " Show keystrokes. Feel free to comment out unless you value this.
set showmatch " Show matching parentheses
set showmode " Shows the editor mode
set title " Display the current file on the terminal bar

" For fast terminal connections to improve smoothness.
" Probably not the best idea if using on a remote server.
set ttyfast

" Series of commands to disable arrow keys. I recommend this to beginners,
" as it will enforce use of hjkl for navigation. I still keep this in my
" vimrc both at work and at home.
" noremap - Non-recursive mappings; if the lhs maps to rhs and rhs maps to
"           something else, then lhs won't get mapped to that something.
" inoremap - Variant of noremap specific to insert mode. Nuance of modes
"            resulted in this being included.
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Setup status line
set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)
set statusline+=%#warningmsg#
set statusline+=%*

" CUSTOM COMMANDS "

" Quick window splits when in normal mode
nnoremap <leader>s :split<cr>
nnoremap <leader>v :vsplit<cr>

" A faster way to exit insert mode. Selected to be unlikely to ever
" be pressed but easy to type. Uncomment it to use it.
" inoremap jkjkjk <esc>

" Save and quit commands
nnoremap <esc><esc><esc> :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :wq<cr>
nnoremap <leader>e :q<cr>

" Make Y consistent with C and D
" D -> d$
" C -> c$
nnoremap Y y$

" Meme command to clear entire file
nnoremap <leader>yeet ggdG

