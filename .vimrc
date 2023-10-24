set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set completeopt-=preview
" 关闭函数预览窗口
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/plugin/Vundle.vim
call vundle#begin('~/.vim/plugin/Vundle.vim')

Plugin 'VundleVim/Vundle.vim'
" 缩进线插件
Plugin 'Yggdroot/indentLine'
" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
Plugin 'git://git.wincent.com/command-t.git'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
Plugin 'ascenator/L9', {'name': 'newL9'}
" 自动格式化
Plugin 'Chiel92/vim-autoformat'
Plugin 'ctrlpvim/ctrlp.vim'

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本

" 快速查找文件
let g:ctrlp_map='<c-p>'
let g:ctrlp_working_path_mode = 'ra'


" 缩进线设置
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:ycm_global_ycm_extra_conf='~/.vim/plugin/YouCompleteMe/.ycm_extra_conf.py'

" Highlight search resulsts.
set hlsearch


set foldmethod=indent   " 折叠代码设置
set foldmethod=syntax
" 启动 vim 时关闭折叠代码 
set nofoldenable

" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
set shell=/bin/bash
