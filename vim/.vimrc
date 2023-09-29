set hlsearch
set incsearch
set hidden
set mouse=a
set history=10000
set visualbell


"
" Line number display
"
set nu
set rnu


"
" Tab stops
"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


"
" Autocmd with FileType
"
if has("autocmd")
  filetype on
"
"  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
"  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
"  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
"  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
"  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType rust :setlocal ts=4 sts=4 sw=4 expandtab commentstring=//\ %s
  autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
endif


"
" Invisible characters
"
"set list
"set nolist
set listchars=tab:▸\ ,eol:¬


"
" Allow the . to execute once for each line of a visual selection
"
xnoremap . :normal .<CR>


"
" vim-plug managed plugins will be downloaded under the specified directory.
"
call plug#begin('~/.vim/vim-plug-plugins')
"
" vim-plug managed plugins.
"
Plug 'rust-lang/rust.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'gruvbox-community/gruvbox'
Plug 'prabirshrestha/vim-lsp'
"
" vim-plug managed plugins list ends here.  Plugins become visible to vim
" after this call.
"
call plug#end()
"
" vim-plug commands.
"
"PlugInstall
"PlugUpdate
"PlugClean[!]
"PlugUpgrade
"PlugStatus
"PlugDiff
"PlugSnapshot[!]


"
" FZF/fzf
"
" this is for mac's homebrew
set rtp+=/usr/local/opt/fzf
" normal mode mapping
nnoremap <C-p> :<C-u>FZF<CR>


"
" NeoVim Terminal mappings
"
if has('nvim')
"  tnoremap <Esc> <C-\><C-n>
"  tnoremap <A-[> <Esc>
"  " Map meta-r for inserting register values
"  tnoremap <expr> <A-r> '<C-\><C-n>"'.nr2char(getchar()).'pi'
"  " Switching between split windows:
"  tnoremap <A-h> <C-\><C-n><C-w>h
"  tnoremap <A-j> <C-\><C-n><C-w>j
"  tnoremap <A-k> <C-\><C-n><C-w>k
"  tnoremap <A-l> <C-\><C-n><C-w>l
"  nnoremap <A-h> <C-w>h
"  nnoremap <A-j> <C-w>j
"  nnoremap <A-k> <C-w>k
"  nnoremap <A-l> <C-w>l
endif


"
" For lightline.vim, as the status line is shown as a plain one on vim 8.x, add
" this:
"
set laststatus=2


"
" vim-colors-solarized colorscheme
"
"Plug 'altercation/vim-colors-solarized'
"syntax enable
"set background=dark
"set background=light
"colorscheme solarized


"
" vim-solarized8 colorscheme
"
"Plug 'lifepillar/vim-solarized8'
""syntax enable
"set background=dark
""set background=light
"colorscheme solarized8
""colorscheme solarized8_low
""colorscheme solarized8_high
""colorscheme solarized8_flat


"
" gruvbox colorscheme configurations
"
"syntax enable
set background=dark
"set background=light
let g:gruvbox_contrast_dark='soft'
"let g:gruvbox_hls_cursor='orange'
colorscheme gruvbox
"colorscheme solarized8_low
"colorscheme solarized8_high
"colorscheme solarized8_flat


"
" mysticaltutor colorscheme
"
"Plug 'caksoylar/vim-mysticaltutor'
"colorscheme mysticaltutor


"
" Make background transparent
"
"hi Normal guibg=NONE ctermbg=NONE


"
" Visual @ mode
"
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction


"
" rust-analyzer & vim-lsp
" https://rust-analyzer.github.io/manual.html#vim-lsp
" https://github.com/prabirshrestha/vim-lsp
"
if executable('rust-analyzer')
  au User lsp_setup call lsp#register_server({
        \   'name': 'Rust Language Server',
        \   'cmd': {server_info->['rust-analyzer']},
        \   'whitelist': ['rust'],
        \ })
endif

if executable('rust-analyzer')
  au User lsp_setup call lsp#register_server({
        \   'name': 'Rust Language Server',
        \   'cmd': {server_info->['rust-analyzer']},
        \   'whitelist': ['rust'],
        \   'initialization_options': {
        \     'cargo': {
        \       'buildScripts': {
        \         'enable': v:true,
        \       },
        \     },
        \     'procMacro': {
        \       'enable': v:true,
        \     },
        \   },
        \ })
endif


"
" Source more scripts
"
"runtime source_airline.vim
"runtime source_base16-vim.vim
"runtime source_vim-colorschemes.vim
"runtime source_pear-tree.vim
"runtime source_cscope.vim
"runtime source_vimade.vim
