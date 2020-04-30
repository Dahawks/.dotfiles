" 1.Vim 基础配置

" nocompatible 用于关闭 compatible,表示不与Vi兼容"
" set nocompatible

" autoread 表示如果当前文件在Vim外被修改且未在Vim里面重新载入的话，则自动重新读取."
set autoread

" 启动的时候不显示提示.
set shortmess=atI

" magic选项用于改变搜索模式使用的特殊字符，推荐阅读'Vim搜索字符转义与magic搜索模式'.
" set magic 暂时没搞懂

" 用于设置Vim窗口标题.
set title

" nobackup 用于关闭 backup，设置覆盖文件时不保留备份文件.
set nobackup

" timeoutlen 表示以毫秒计的等待键码或映射的键序完成的时间,推荐阅读Vim操作符待决模式.
set timeoutlen=500

" 2.Vim编码设置

" encoding 设置 Vim 内部使用的字符编码，它应用于缓冲区、寄存器、表达式所用的字符.
set encoding=utf-8

" fileencodings 设置一个字符编码的列表，表示 Vim 自动检测文件编码时的备选字符编码列表.
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" fileformats 用于设置参与自动检测换行符()格式类型的备选列表.
set fileformats=unix,dos,mac

" termencoding 用于设置终端使用的编码方式.
set termencoding=utf-8

" formatoptions 表示自动排版完成的方式.
" Vim 在可视化模式下，可使用 = 进行代码格式的自动排版.
" m 表示在任何高于255的多字节字符上分行.
" B 表示在连接行时，不要在两个多字节字符之间插入空格.
set formatoptions+=m
set formatoptions+=B

" 3.Vim界面显示设置

" ruler 用于显示当前光标所在位置的行号和列号(逗号分隔).
" 如果还在空间，在最右端显示文本在文件中的相对位置.
set ruler

" number 用于设置显示行号.
set number

" nowrap 设置超过窗口宽度的行不自动回绕显示.
set nowrap

" showcmd 用于设置在屏幕最后一行显示(部分的)命令.
set showcmd

" showmode 在插入,替换和可视模式里，在最后一行提供消息.
set showmode

" showmatch 表示插入括号时短暂地跳转到与之匹配的对应括号.
" 而停留的时间由 matchtime 选项设置.
" 如果置位 'showmatch'.
" matchtime 表示显示配对括号的十分之一秒.
set showmatch
set matchtime=2

" 4.Vim查找配置

" hlsearch 用于设置将搜索结果高亮显示
set hlsearch

" incsearch 选项会让Vim根据已经在查找域中输入的文本，预览第一处匹配目标，
" 每当新输入一个字符时，Vim会即时更新预览内容.
set incsearch

" 当 ignorecase 和 smartcase 选项均打开时.
" 如果搜索模式中包含大写字母，Vim就会认为当前的查找(搜索)是区分大小写的.
" 如果搜索模式中不包含大写字母，Vim则会认为搜索应该不区分大小写.
" 这是个比较"智能的"推测你搜索意图的机制.
set ignorecase
set smartcase

" 5.Vim Tab 制表符设置

" expandtab 选项用于设置在 Vim 插入模式下按下 Tab 键时,输入到 Vim 中的都是空格.
set expandtab

" smarttab 表示插入 Tab 时使用 shiftwidth.
set smarttab

" shiftround 表示缩进列数对齐到 shiftwidth 值的整数倍.
set shiftround

" 6.Vim 缩进配置

" autoindent 用于设置新增行的行和前一行具有相同的缩进形式.
" smartindent 选项用于设置新增行时进行"智能"缩进，主要用于C语言一族，与cindent选项类似.
" 在Vim smartindent 缩进模式下,每一行都有相同的缩进量,直到遇到右大括号(])取消缩进形式.
set autoindent smartindent shiftround

" shiftwidth 选项用于设置执行Vim 普通模式下的缩进操作(<< 和 >>命令)时缩进的列数.
" 而 shiftround 选项则表示缩进列数会自动取整到 'shiftwidth' 选项值的倍数.
set shiftwidth=4

" tabstop 选项设置按下 Tab 键时，缩进的空格个数.
set tabstop=4

" 插入模式选项卡和退格键使用4个空格.
set softtabstop=4 

" 7.Vim显示当前光标位置

" cursorcolumn 设置高亮显示光标当前所在列.
set cursorcolumn

" cursorline 设置高亮显示光标所在屏幕行.
set cursorline

" 8.Vim文件类型设置

" filetype on 配置项时Vim文件类型检测功能的开关.
" filetype plugin on 用于Vim打开加载文件类型插件功能.
" fileytpe indent on 用于指定Vim为不同类型的文件定义不同的缩进格式.
filetype on
filetype plugin on
filetype indent on

inoremap kj <Esc>
