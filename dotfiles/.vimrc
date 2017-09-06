" Begin Vundle config

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ntpeters/vim-bettter-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'zanglg/nova'
Plugin 'kien/rainbow_parentheses.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" End Vundle config

" Commands:
"   :PluginList        - lists configured plugins
"   :PluginInstall     - installs plugins
"   :PluginSearch foo  - searches for foo
"   :PluginClean       - confirms removal of unused plugins

" non-plugin stuff below.

set pastetoggle=<F6>  "F6 to enable paste mode
set noerrorbells      "Disables annoying alarm bells
set ls=2              "Always show status line
set showmatch         "Highlight brackets, parens, etc
set relativenumber    "Enables relative line numbering 
set number            "Enables line numbering

" auto-delete whitespace on write
autocmd BufWritePre * call Delete_whitespace()

" Toggle line numbers with F4
noremap <F4> :set invnumber invrelativenumber<CR>

" RainbowParentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3' ],
    \ ['Darkblue',    'SeaGreen3'  ],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3' ],
    \ ['darkcyan',    'RoyalBlue3' ],
    \ ['darkred',     'SeaGreen3'  ],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3' ],
    \ ['gray',        'RoyalBlue3' ],
    \ ['black',       'SeaGreen3'  ],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3' ],
    \ ['darkcyan',    'SeaGreen3'  ],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3' ],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



" Tabs & indents to 2 spaces
set ts=2
set sw=2


