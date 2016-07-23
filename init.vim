" Auther : eliza0x
" Licence : MIT LICENCE (https://github.com/eliz40x/nvim/blob/master/LICENSE)

filetype off
" Miv : plugin manager
set rtp^=~/.config/nvim/miv/miv/

nnoremap ;  :
nnoremap :  ;
vnoremap ;  :
vnoremap :  ;
nnoremap k  gk
nnoremap j  gj
vnoremap k  gk
vnoremap j  gj
nnoremap gk  k
nnoremap gj  j
vnoremap gk  k
vnoremap gj  j

nnoremap mh ^
nnoremap ml $
vnoremap mh ^
vnoremap ml $

nnoremap fd :nohl<CR>
inoremap fd <Esc>:nohl<CR>
vnoremap fd <Esc>:nohl<CR>

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nnoremap <Space> <Nop>
nnoremap <Space><Space> :<C-u>
nnoremap <Space> :<C-u>echo("[Plugin] m:Motion w:W3m f:File h:GhcMod g:Git")<CR>

nnoremap <Space>w :<C-u>W3m google

nmap <Space>m [Motion]
nnoremap [Motion] <Nop>
nmap     <silent>[Motion]f <Plug>(easymotion-overwin-f2)
map      <silent>[Motion]j <Plug>(easymotion-j)
map      <silent>[Motion]k <Plug>(easymotion-k)
nnoremap <silent>[Motion] :<C-u>echo("[Motion] f,F:Find j:Below k:Above")<CR>

nmap <Space>t [Tab]
nnoremap [Tab] <Nop>
nnoremap <silent>[Tab]h <C-w>h
nnoremap <silent>[Tab]j <C-w>j
nnoremap <silent>[Tab]k <C-w>k
nnoremap <silent>[Tab]l <C-w>l
nnoremap <silent>[Tab]H <C-w><
nnoremap <silent>[Tab]J <C-w>-
nnoremap <silent>[Tab]K <C-w>+
nnoremap <silent>[Tab]L <C-w>>
nnoremap <silent>[Tab]s :<C-u>split<CR>
nnoremap <silent>[Tab]v :<C-u>vsplit<CR>
nnoremap <silent>[Tab]n :<C-u>tabNext<CR>
nnoremap <silent>[Tab]N :<C-u>tabprevious<CR>
nnoremap <silent>[Tab]t :<C-u>tabnew<CR>
nnoremap <silent>[Tab] :<C-u>echo("[Tab] h,j,k,l:Move   H,J,K,L:ChangeSize\n     s:Hsplit v:Vsplit t:New n:Next N:previous")<CR>

nmap <Space>f [File]
nnoremap <silent>[File] <Nop>
nnoremap <silent>[File]t :<C-u>NERDTreeToggle<CR>
nnoremap <silent>[File]i :<C-u>FZF
nnoremap <silent>[File]w :<C-u>w<CR>
nnoremap <silent>[File]W :<C-u>w!<CR>
nnoremap <silent>[File]q :<C-u>q<CR>
nnoremap <silent>[File]Q :<C-u>q!<CR>
nnoremap <silent>[File] : <C-u>echo("[GhcMod] t:Tree i:IncSearch w:Write q:Quit")<CR>

nmap <Space>h [Haskell]
nnoremap [GhcMod] <Nop>
nnoremap <silent>[Haskell]t :<C-u>GhcModType<CR>
nnoremap <silent>[Haskell]c :<C-u>GhcModTypeClear<CR>
nnoremap <silent>[Haskell]l :<C-u>GhcModLintAsync<CR>
nnoremap <silent>[Haskell]e :<C-u>GhcModExpand<CR>
nnoremap <silent>[Haskell]  :<C-u>echo("[GhcMod] t:Type c:TypeClear l:Lint e:Expand")<CR>

nmap <Space>g [Git]
nnoremap [Git] <Nop>
nnoremap <silent>[Git]s :<C-u>Gstatus<CR>
nnoremap <silent>[Git]a :<C-u>Gwrite<CR>
nnoremap <silent>[Git]r :<C-u>Gread<CR>
nnoremap <silent>[Git]m :<C-u>Gmove
nnoremap <silent>[Git]c :<C-u>Gcommit<CR>
nnoremap <silent>[Git]b :<C-u>Gblame<CR>
nnoremap <silent>[Git]d :<C-u>Gdiff<CR>
nnoremap <silent>[Git]  :<C-u>echo("[Git] s:Status a:Add r:Read m:Move c:Commit b:Blame d:Diff")<CR>

set cursorline
set expandtab
set foldmethod=marker
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set noswapfile
set nowildmenu
set nowrapscan
set number
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set softtabstop=2
set tabstop=2
set wildmode=list:longest,full
set scrolloff=10

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set background=dark
syntax on
filetype plugin indent on
