set nu
filetype off
call plug#begin('~/.config/nvim/plugged')
Plug 'theniceboy/vim-deus'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'fatih/vim-go'
Plug 'junegunn/goyo.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'makerj/vim-pdf'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'
Plug 'mileszs/ack.vim'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
Plug 'xolox/vim-session'
Plug 'Shougo/deoplete.nvim'
Plug 'springhan/notoc.vim'
Plug 'Lokaltog/vim-powerline'
Plug '30-seconds/30-seconds-of-code'
Plug 'mzlogin/vim-markdown-toc'
Plug 'junegunn/vim-easy-align'
Plug 'nsf/gocode',{'rtp':'vim'}
Plug 'springhan/terslation.vim'
Plug 'fatih/vim-go',{'tag':'*','for':'go'}
Plug 'tomasr/molokai'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'lilydjwg/fcitx.vim'
Plug 'kana/vim-textobj-user'
Plug 'Iron-E/nvim-highlite'
"Plug 'makerj/vim-pdf'
Plug 'christoomey/vim-tmux-navigator'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'itchyny/vim-cursorword'

Plug 'tmhedberg/SimpylFold'

Plug 'reedes/vim-wordy'

Plug 'kshenoy/vim-signature'

Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/defx.nvim',{'do':':UpdateRemotePlugins'}
Plug 'rhysd/open-pdf.vim'

Plug 'roxma/nvim-yarp'

Plug 'Shougo/denite.nvim'
Plug 'suan/vim-instant-markdown'
Plug 'Blackrush/vim-gocode'
" 网友贡献的补全片段
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdcommenter'
Plug 'younghz/markdown'
Plug 'iamcco/markdown-preview.nvim'
call plug#end()
let g:airline_powerline_fonts                   = 1 " 使用 powerline 打过补丁的字体
let g:airline#extensions#tabline#enabled        = 1 " 开启 tabline
let g:airline#extensions#tabline#buffer_nr_show = 1 " 显示 buffer 编号
let g:airline#extensions#ale#enabled            = 1 " enable ale integration
 "nerdtree"
 autocmd vimenter * NERDTree
 map <F3> :NERDTreeMirror<CR>
 map <F3> :NERDTreeToggle<CR>
" 状态栏显示图标设置
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_symbols.crypt     = '?'
let g:airline_symbols.linenr    = '⭡'
let g:airline_symbols.branch    = '⭠'
" 切换 buffer
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
 
" 关闭当前 buffer
noremap <C-x> :w<CR>:bd<CR>
" <leader>1~9 切到 buffer1~9
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
let g:UltiSnipsExpandTrigger       = "<c-tab>"     " 代码片段补全触发
let g:UltiSnipsListSnippets        = "<c-\>"       " 列出补全可选列表
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"       " 下一条补全
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"       " 上一条补全
let g:UltiSnipsEditSplit           = "horizontal"  " how the edit window is opened 
let g:NERDSpaceDelims            = 1                                    " 在注释符号后加一个空格
let g:NERDCompactSexyComs        = 1                                    " 紧凑排布多行注释
let g:NERDDefaultAlign           = 'left'                               " 逐行注释左对齐
let g:NERDAltDelims_java         = 1                                    " JAVA 语言使用默认的注释符号
let g:NERDCustomDelimiters       = {'c': {'left': '/*', 'right': '*/'}} " C 语言注释符号
let g:NERDCommentEmptyLines      = 1                                    " 允许空行注释
let g:NERDTrimTrailingWhitespace = 1                                    " 取消注释时删除行尾空格
let g:NERDToggleCheckAllLines    = 1                                    " 检查选中的行操作是否成功
let g:EasyMotion_do_mapping = 0  " Disable default mappings                                                              
let g:EasyMotion_smartcase  = 1  " Turn on case-insensitive feature
 
" Find {char}{char} forward and backward at the same time                                                                
nmap <Leader>s <Plug>(easymotion-sn)                                                                                     
xmap <Leader>s <Plug>(easymotion-sn)                                                                                     
omap <Leader>s <Plug>(easymotion-sn)                                                                                     
" Beginning of word forward and backward                                                                                 
nmap <Leader>w <Plug>(easymotion-overwin-w)                                                                              
xmap <Leader>w <Plug>(easymotion-bd-w)                                                                                   
omap <Leader>w <Plug>(easymotion-bd-w)                                                                                   
" Line downward and upward                                                                                               
nmap <Leader>ej <Plug>(easymotion-overwin-line)                                                                                                                                                              
xmap <Leader>ej <Plug>(easymotion-bd-jk)                                                                                 
omap <Leader>ej <Plug>(easymotion-bd-jk)                                                                                 
" jump to anywhere in line                                                                                               
nmap <Leader>ea <Plug>(easymotion-lineanywhere)
let g:ale_lint_on_text_changed       = 'normal'                     " 代码更改后启动检查 
let g:ale_lint_on_insert_leave       = 1                            " 退出插入模式即检查
let g:ale_sign_column_always         = 1                            " 总是显示动态检查结果
let g:ale_sign_error                 = '>>'                         " error 告警符号
let g:ale_sign_warning               = '--'                         " warning 告警符号
let g:ale_echo_msg_error_str         = 'E'                          " 错误显示字符
let g:ale_echo_msg_warning_str       = 'W'                          " 警告显示字符
let g:ale_echo_msg_format            = '[%linter%] %s [%severity%]' " 告警显示格式
 
" C 语言配置检查参数
let g:ale_c_gcc_options              = '-Wall -Werror -O2 -std=c11'
let g:ale_c_clang_options            = '-Wall -Werror -O2 -std=c11'
let g:ale_c_cppcheck_options         = ''
" C++ 配置检查参数
let g:ale_cpp_gcc_options            = '-Wall -Werror -O2 -std=c++14'
let g:ale_cpp_clang_options          = '-Wall -Werror -O2 -std=c++14'
let g:ale_cpp_cppcheck_options       = ''
 
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang', 'gcc'],
\   'c': ['clang', 'gcc'],
\   'python': ['pylint'],
\}
" <F9> 触发/关闭代码动态检查
map <F9> :ALEToggle<CR>
"普通模式下，ak 前往上一个错误或警告，aj 前往下一个错误或警告                                                                                                                                                    
nmap ak <Plug>(ale_previous_wrap)
nmap aj <Plug>(ale_next_wrap)
" ad 查看错误或警告的详细信息
nmap ad :ALEDetail<CR>
