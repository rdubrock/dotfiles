  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  set ttimeoutlen=50
  highlight PmenuSel guifg=#ffffff guibg=#0000ff
  set gfn=Monaco:h13
  "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
  "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
  "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
  if (empty($TMUX))
    if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
      set termguicolors
    endif
  endif
  set linespace=2
  set number
  set relativenumber
  set hlsearch
  set nocompatible
  filetype off
  set bs=2
  set ai
  set ruler
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set autoread
  set laststatus=2
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  set omnifunc=htmlcomplete#CompleteTags
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  Plugin 'sheerun/vim-polyglot'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'Raimondi/delimitMate'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'rakr/vim-one'
  Plugin 'joshdick/onedark.vim'
  Plugin 'Quramy/tsuquyomi'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'Chiel92/vim-autoformat'
  Plugin 'alvan/vim-closetag'
  Plugin 'w0rp/ale'
  call vundle#end()
  colorscheme one
  set background=dark
  let g:closetag_filenames = '*.html,*.js,*.jsx'
  let g:one_allow_italics = 1
  let g:typescript_indent_disable = 1
  let g:jsx_ext_required=0
  let g:javascript_enable_domhtmlcss=1
  let g:ycm_allow_changing_updatetime=1
  let g:onedark_terminal_italics=1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_theme='one'
  let g:ale_sign_error = "✘"
  let g:ale_sign_warning = "🔸"
  let g:airline#extensions#ale#enabled = 1
  highlight SyntasticErrorLine guibg=#550000
  highlight SyntasticWarningLine guibg=#331d1e
  syntax on
