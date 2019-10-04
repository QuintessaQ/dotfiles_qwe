set nocompatible
filetype off

set number 
set linebreak 
set showbreak=+++ 
set textwidth=100 
set showmatch 
set visualbell 
 
set hlsearch 
set smartcase 
set ignorecase 
set incsearch 
  
set autoindent 
set shiftwidth=4 
set smartindent 
set smarttab 
set softtabstop=4 
set mouse=a                                         " enable mouse support
set laststatus=2                                    " always show statusline
set number                                          " show line number
set title                                           " change terminal's title
set backspace=indent,eol,start                      " allow backspace over autoindent
set autowriteall                                    " autosave files
set completeopt-=preview
set lazyredraw
set showmatch
set scrolloff=3                                     " spaces under cursor at bottom
set ruler

   
set undolevels=3000
set backspace=indent,eol,start 
set expandtab                                       " tabs are spaces
" set autoindent                                      " autoindent on a new line 
set smartindent
set smarttab                                        

"search
set incsearch                                       " search as characters are entered
set hlsearch                                        " highlight matches
set ignorecase                                      " ignore case when searching lowercase
set smartcase                                       " don't ignore case when inserting uppercase characters

"set background=dark
" set termguicolors
" set t_Co=256
colorscheme SlateDark
" let g:onedark_termcolor=256
" highlight Normal ctermbg=NONE
syntax enable


" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
" ## added by OPAM user-setup for vim / ocp-indent ## f13a627dfe008e636a0110e25aedb315 ## you can edit, but keep this line
if count(s:opam_available_tools,"ocp-indent") == 0
  source "/Users/qiaohan/.opam/4.08.1/share/ocp-indent/vim/indent/ocaml.vim"
endif
" ## end of OPAM user-setup addition for vim / ocp-indent ## keep this line
