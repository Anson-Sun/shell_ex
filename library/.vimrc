syntax on           " 语法高亮
filetype on         " 打开文件类型检测
filetype plugin on  " 使能文件类型插件
filetype indent on  " 使能文件类型缩进

"set number          " 显示行号
"set foldenable      " 打开折叠
"set foldmethod=indent
set hlsearch        " 搜索高亮
set directory^=$HOME/.vim/swap//    " 设置临时文件目录
set shiftwidth=4    " 制表符宽度4个字符
set tabstop=4       "
set expandtab       " 将制表符替换为空格
set autoindent      " 打开自动缩进
set novisualbell    " 出错不要响铃
set backspace=2     " 设置删除模式
autocmd BufWritePre * :%s/\s\+$//e          " 删除尾部空格
autocmd FileType python set noexpandtab     " python关闭制表符扩展
autocmd FileType make set noexpandtab       " makefile关闭制表符扩展

" 设置tab标签快捷键
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <Tab> :tab sball<CR>
