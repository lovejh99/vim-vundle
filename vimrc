set nocompatible
filetype off    " Required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'    " Required
Plugin 'kien/ctrlp.vim'   " ctrlp
Plugin 'sjl/gundo.vim'   " visualize your Vim undo tree
Plugin 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
Plugin 'Valloric/ListToggle' " ListToggle, 暂时不清楚使用方法
Plugin 'majutsushi/tagbar' "tagbar
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'EasyGrep'   " https://github.com/dkprice/vim-easygrep
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'universal-ctags/ctags'
Plugin 'vim-scripts/taglist.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'

Plugin 'vim-scripts/a.vim'
Plugin 'joonty/vdebug'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'shawncplus/phpcomplete.vim'

call vundle#end()

filetype plugin indent on " Required

" Some settings to enable the theme:
set number        " Show line numbers
syntax enable     " Use syntax highlighting
set background=dark

" CtrlP 配置, 详见： https://github.com/kien/ctrlp.vim
let g:ctrlp_map='<C-0>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
map ff :CtrlP<CR>

" Gundo 配置快捷键： " 调起Gundo & 隐藏Gundo
map gs :GundoShow<CR> 
map gh :GundoHide<CR>

let g:lt_location_list_toggle_map = '<leader>l'  
let g:lt_quickfix_list_toggle_map = '<leader>q'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tagbar setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width=50
let g:tagbar_right = 1
nmap <F8> :TagbarToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nerdtree setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F9> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.o$', '\.lo$', '\.gcno$', '\.gcda$', '\~$']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"EasyGrep setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyGrepMode = 2
let g:EasyGrepWindowPosition = "botright"
"let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.gcno,*.gcda""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Systastic setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_symbols = 'fancy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" php-complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:phpcomplete_relax_static_constraint = 1






" disable tabs
set expandtab
set shiftwidth=4
set softtabstop=4

" set encoding & fileencoding
set encoding=utf-8
set fileencoding=utf-8


" Ignore these filenames during enhanced command line completion.
set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif " binary images
set wildignore+=*.luac " Lua byte code
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc " Python byte code
set wildignore+=*.spl " compiled spelling word lists
set wildignore+=*.sw? " Vim swap files

" Enable completion dictionaries for PHP buffers.
autocmd FileType php set complete+=k~/.vim/dict/PHP.dict

" PHP Autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set ofu=syntaxcomplete#Complete

" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)
let php_sql_query=1
let php_htmlInStrings=1
let g:php_folding=2
set foldenable
set foldmethod=syntax
set foldlevel=100

" 选中高亮
set hls

" PHP Parse check
:autocmd FileType php noremap <C-L> :!/usr/local/bin/php -l %<CR>

" 配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost .vimrc source ~/.vimrc


