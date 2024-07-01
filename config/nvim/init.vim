" Base
filetype off                  " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
"set runtimepath-=/home/joernih/.local/share/
set tags=./.non_existent_tags
set nocompatible              " required
set noswapfile
set number
set autochdir
set clipboard+=unnamedplus
" set backupdir="/home/joernih/tmp"
let g:gxext#opencmd = 'xdg-open'
let g:netrw_browsex_viewer = 'brave %s'
let g:mapleader=','
let g:nvimr_localleader = ","
let g:R_enable_nvim_term = 1
let g:neoterm_repl_python = 'python3'
let g:neoterm_autoscroll = 1
let maplocalleader = ','
autocmd FileType r nnoremap <buffer> <C-a> <C-\><C-n>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'roxma/nvim-yarp'
Plug 'lervag/vimtex'
Plug 'thmsmlr/gpt.nvim'
Plug 'terror/chatgpt.nvim'
Plug 'chrisbra/csv.vim'
Plug 'elzr/vim-json'
Plug 'ludovicchabant/vim-gutentags'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hkupty/iron.nvim'
Plug 'geg2102/nvim-python-repl'
Plug 'folke/tokyonight.nvim',  
Plug 'kassio/neoterm'
Plug 'glacambre/firenvim'
Plug 'itchyny/lightline.vim'
Plug 'jpalardy/vim-slime'
Plug 'voldikss/vim-floaterm'
Plug 'puremourning/vimspector'
Plug 'jalvesaq/vimcmdline'
Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'voldikss/vim-browser-search'
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" R configurations
map rk :RKill<cr>
map rs :RSTOP<cr>
let R_debug = 0
let R_assign = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/InitJIH/config/nvim/keymapping.vim
" Mappings
" source $HOME/initsetup/config/nvim/script/keymapping.vim
"map cs :source ~/Init/config/nvim/init.vim<cr>
"nnoremap ff <cmd>Telescope find_files<cr>
"nnoremap fg <cmd>Telescope live_grep<cr>
"nnoremap fb <cmd>Telescope buffers<cr>
"nnoremap fh <cmd>Telescope help_tags<cr>
"noremap yy "+yy
"nnoremap <silent> <leader>rc :RQuit<CR>
"set timeoutlen=600
"let g:lightline = {'active': {'left': [['CapsLock', 'mode', 'paste'], ['filename', 'modified']]} }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimspector
" let g:completion_enable_auto_popup = 1
" let g:vimspector_enable_mappings = 'HUMAN'
" let g:vimspector_install_gadgets = ['python']
" let g:vimspector_python_interpreter = '/usr/bin/python3'
" let g:vimspector_session_initial_breakpoint = { 'type': 'function', 'pattern': 'main' }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Function to open PDFs
function! OpenPDF(link)
  if a:link =~ '\v\.pdf$'
    execute 'silent !xdg-open' shellescape(a:link, 1)
  else
    " default gx behavior for other links
    execute 'silent !xdg-open' shellescape(a:link, 1)
  endif
endfunction

" Remap gx to use the custom function
nnoremap gx :call OpenPDF(expand('<cfile>'))<CR>
""""
