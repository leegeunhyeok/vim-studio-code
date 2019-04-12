""""""""""""""""""""" 
" Visual Studio Vim "
"                   "
"  Setting script   "
"  By Geunhyeok LEE "
"                   "
"  Version 0.0.1    "    
"""""""""""""""""""""

" Vundle 설정
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" 플러그인 설치
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-Tree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'tomasiser/vim-code-dark'
call vundle#end()
filetype plugin indent on
" Vundle end


" 매핑 <leader> 설정
let mapleader=','

" 문법 하이라이팅 설정
if has('syntax')
  syntax on
endif

" 파일 열었을 때 이전 작업 위치로 커서 이동
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" 인덴트 관련 설정
" 탭 문자를 스페이스바로 대체
set autoindent
set cindent
set smartindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" 라인 번호 표시
set nu

" 커서가 위치한 라인 표시
set cursorline

" 검색어 하이라이팅
set hlsearch

" 일치하는 괄호쌍 하이라이팅
set showmatch

" 파일 인코딩 및 기록버퍼 크기 지정
set fileencoding=utf-8
set history=256

" 텍스트 색상 설정 및 테마 지정
set t_Co=256
set t_ut=
colorscheme codedark

" airline 설정 및 하단 상태바 표시
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='codedark'
let g:airline_powerline_fonts=1
set laststatus=2

" NERD Tree 관련 설정
map <F3> :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" Neocomplecache 관련 설정
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3

" NERD Comment 관련 설정
map <Leader>c <plug>NERDComToggleComment
