" Tags
"set tags+=/usr/include/tags

" Tagbar Settings "
nmap <Leader>tb :TagbarToggle<CR>         " 快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F3> :Tagbar<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()     "如果是c语言的程序的话，tagbar自动开启

" NERDTree Settings "
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

" YCM Settings "
let mapleader=","
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_global_ycm_extra_conf='/usr/share/vim/vimfiles/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '<CR>'  "回车即选中当前项
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nmap <F4> :YcmDiags<CR>
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tag_files = 1 
let g:ycm_min_num_of_chars_for_completion = 2	"从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc = 0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax = 1	" 语法关键字补全
" nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
nnoremap <leader>lo :lopen<CR>	"open locationlist
nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" MiniBufExplorer Settings"
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

map <F11> :MBEbp<CR>
map <F12> :MBEbn<CR>

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,gbk,gb2312
set fileencoding=utf-8

colorscheme koehler
highlight Pmenu ctermfg=White ctermbg=DarkGray
highlight Pmenu guifg=White guibg=#606060
au InsertLeave * hi Cursor guibg=Green
au InsertEnter * hi Cursor guibg=White
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set gcr=a:blinkon0

set number
set ruler
set cursorline
set magic
set showcmd
set smartindent
set cindent
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
autocmd FileType python set shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0 tabstop=4
set smarttab
set backspace=2
highlight ColorColumn ctermbg=DarkGray guibg=#606060
set colorcolumn=80

set mouse=a
set selection=exclusive
set selectmode=mouse,key

set showmatch
set matchtime=1

set hlsearch
set incsearch
set ignorecase

set scrolloff=2

set foldenable
set foldmethod=manual
set foldcolumn=0

set cmdheight=2
set statusline=%F%m%r%h%w\ [FORMART=%{&ff}]\ [POS=%l,%v][%p%%]\ %{strftime(\"%Y-%m-%d\ -\ %H:%M\")}
set laststatus=2

set clipboard+=unnamed

set autoread

set iskeyword+=_,$,@,%,#,-
set wildmenu

set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\

au BufRead,BufNewFile * setfiletype txt

set cino=N-s
