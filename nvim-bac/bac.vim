" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~ Project: vim-config             ~
" ~ Author: Thamognya Kodi          ~
" ~ LICENSE: GPL-3.0                ~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"
" \\\\\\\\\\\\\\\\\\//////////////////
"
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~       help section begin        ~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Shortcuts
""" Key
"""" <Leader> = \
"" <Leader>ls - for live latex preview to start - command :LLPStartPreview
"" <Leader>op - to convert org to pdf - command :OrgExportToPDF
"" <Leader>oh - to convert org to html - command :OrgExportToHTML
"" <Leader>ol - to convert org to latex - command :OrgExportToLaTeX
"" <Leader>om - to convert org to markdown - command :OrgExportToMarkdown
"" <Leader>bs - to start bracey server for live html css - command :Bracey
"" <Leader>bc - to stop bracey server for live html css - command :BraceyStop
"" <Leader>br - to reload bracey server for live html css - command :BraceyReload
"" <Leader>ff - telescope - find files - command Telescope find_files
"" <Leader>fg - telescope - live grep - command Telescope live_grep
"" <Leader>fb - telescope - buffers - command Telescope buffers
"" <Leader>fh - telescope - help_tags - command Telescope help_tags
"" <Leader>ns - nerdtree - command :NERDTree
"" <Leader>nc - nerdtree toggle - command -NERDTreeToggle
"" <Leader>bn - buftabline - command :bnext
"" <Leader>bp - buftabline - command :bprevious
"" <Leader>bf - buftabline - command :bfirst
"" <Leader>bl - buftabline - command :blast
"" <Leader>ww -- Open default wiki index file.
"" <Leader>wt -- Open default wiki index file in a new tab.
"" <Leader>ws -- Select and open wiki index file.
"" <Leader>wd -- Delete wiki file you are in.
"" <Leader>wr -- Rename wiki file you are in.
"" <Enter> -- Follow/Create wiki link.
"" <Shift-Enter> -- Split and follow/create wiki link.
"" <Ctrl-Enter> -- Vertical split and follow/create wiki link.
"" <Backspace> -- Go back to parent(previous) wiki link.
"" <Tab> -- Find next wiki link.
"" <Shift-Tab> -- Find previous wiki link.
"" <leader>vh - command :Vimwiki2HTML
"" <leader>vah - command :VimwikiAll2HTML
"
" nvim Lsp installer commands
"
"    :LspInstallInfo - opens a graphical overview of your language servers
"    :LspInstall [--sync] [server] ... - installs/reinstalls language servers. Runs in a blocking fashion if the --sync argument is passed (only recommended for scripting purposes).
"    :LspUninstall [--sync] <server> ... - uninstalls language servers. Runs in a blocking fashion if the --sync argument is passed (only recommended for scripting purposes).
"    :LspUninstallAll [--no-confirm] - uninstalls all language servers
"    :LspInstallLog - opens the log file in a new tab window
"    :LspPrintInstalled - prints all installed language servers
"
"    :LspInstallInfo - opens a graphical overview of your language servers
"    :LspInstall [--sync] [server] ... - installs/reinstalls language servers. Runs in a blocking fashion if the --sync argument is passed (only recommended for scripting purposes).
"    :LspUninstall [--sync] <server> ... - uninstalls language servers. Runs in a blocking fashion if the --sync argument is passed (only recommended for scripting purposes).
"    :LspUninstallAll [--no-confirm] - uninstalls all language servers
"    :LspInstallLog - opens the log file in a new tab window
"    :LspPrintInstalled - prints all installed language servers
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~        help section end         ~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"
" \\\\\\\\\\\\\\\\\\//////////////////
"
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~       Plug section begin        ~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#begin('~/.config/nvim/plugged')
"
" \\\\\\\\\\\\\\\\\\//////////////////
"
" Asthetics
" " Colorscheme
Plug 'dylanaraps/wal.vim'
" " dashboard
Plug 'glepnir/dashboard-nvim'
" " " " telescope plugin requirements
Plug 'nvim-lua/plenary.nvim'
" " " telescope
Plug 'nvim-telescope/telescope.nvim'
" " nerdtree
Plug 'preservim/nerdtree'
" " " nerdtree git 
Plug 'Xuyuanp/nerdtree-git-plugin'
" " " nerdtree devicons
Plug 'ryanoasis/vim-devicons'
" airline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" Lightline
Plug 'itchyny/lightline.vim'
"
" \\\\\\\\\\\\\\\\\\//////////////////
"
" Documents
" " Org mode
Plug 'jceb/vim-orgmode'
" " vim wiki 
Plug 'vimwiki/vimwiki'
"
" \\\\\\\\\\\\\\\\\\//////////////////
"
" Utils 
" " coc vim / autocompletion / intellgience
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" " Copliot
" Plug 'github/copilot.vim'
" " " not in the preivew yet :(
" " Latex preview
Plug 'xuhdev/vim-latex-live-preview'
" " LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
" " Html css javascript preview
Plug 'turbio/bracey.vim'
" " buf a tab
Plug 'ap/vim-buftabline'
"
" \\\\\\\\\\\\\\\\\\//////////////////
"
call plug#end()
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~        Plug section end         ~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"
" \\\\\\\\\\\\\\\\\\//////////////////
"
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~         config begin            ~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" Basic config
" " Color Scheme
colorscheme wal
" " Numbers
set number
set relativenumber
" " no error bells
set noerrorbells
" " tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
" " clipboard
set clipboard=unnamedplus
" " split to right
set splitbelow
set splitright
" " for vimwiki
set nocompatible
filetype plugin on
syntax on

" Org mode
" " requrires emacs download
noremap <Leader>op :OrgExportToPDF<CR>
noremap <Leader>oh :OrgExportToHTML<CR>
noremap <Leader>ol :OrgExportToLaTeX<CR>
noremap <Leader>om :OrgExportToMarkdown<CR>

" vim wiki
noremap <Leader>vh :Vimwiki2HTML<CR>
noremap <Leader>vah VimwikiAll2HTML<CR>

" vim live latex preview
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'pdflatex'
let g:livepreview_use_biber = 1
"" shortcuts
noremap <Leader>ls :LLPStartPreview<CR>

" Dashboard

let g:dashboard_custom_header =[
    \'  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠤⠖⠚⢉⣩⣭⡭⠛⠓⠲⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀  ',
    \'  ⠀⠀⠀⠀⠀⠀⢀⡴⠋⠁⠀⠀⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢦⡀⠀⠀⠀⠀  ',
    \'  ⠀⠀⠀⠀⢀⡴⠃⢀⡴⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀  ',
    \'  ⠀⠀⠀⠀⡾⠁⣠⠋⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀  ',
    \'  ⠀⠀⠀⣸⠁⢰⠃⠀⠀⠀⠈⢣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀  ',
    \'  ⠀⠀⠀⡇⠀⡾⡀⠀⠀⠀⠀⣀⣹⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀  ',
    \'  ⠀⠀⢸⠃⢀⣇⡈⠀⠀⠀⠀⠀⠀⢀⡑⢄⡀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇  ',
    \'  ⠀⠀⢸⠀⢻⡟⡻⢶⡆⠀⠀⠀⠀⡼⠟⡳⢿⣦⡑⢄⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇  ',
    \'  ⠀⠀⣸⠀⢸⠃⡇⢀⠇⠀⠀⠀⠀⠀⡼⠀⠀⠈⣿⡗⠂⠀⠀⠀⠀⠀⠀⠀⢸⠁  ',
    \'  ⠀⠀⡏⠀⣼⠀⢳⠊⠀⠀⠀⠀⠀⠀⠱⣀⣀⠔⣸⠁⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀  ',
    \'  ⠀⠀⡇⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀  ',
    \'  ⠀⢸⠃⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⠀⢀⠀⠀⠀⠀⠀⣾⠀⠀  ',
    \'  ⠀⣸⠀⠀⠹⡄⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⠀⠸⠀⠀⠀⠀⠀⡇⠀⠀  ',
    \'  ⠀⡏⠀⠀⠀⠙⣆⠀⠀⠀⠀⠀⠀⠀⢀⣠⢶⡇⠀⠀⢰⡀⠀⠀⠀⠀⠀⡇⠀⠀  ',
    \'  ⢰⠇⡄⠀⠀⠀⡿⢣⣀⣀⣀⡤⠴⡞⠉⠀⢸⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣧⠀⠀  ',
    \'  ⣸⠀⡇⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⢹⠀⠀⢸⠀⠀⢀⣿⠇⠀⠀⠀⠁⠀⢸⠀⠀  ',
    \'                                  ',
    \'         By Thamognya Kodi        ',
    \]
let g:dashboard_default_executive ='telescope'
" " telescope
"" extension: config for Plug 'nvim-telescope/telescope.nvim'
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" nerdtree
"" autocmd VimEnter * NERDTree | wincmd p
""" autoloads nerdtree everytime
noremap <Leader>ns :NERDTree<CR>
noremap <Leader>nc :NERDTreeToggle<CR>
"" config for Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'o',
                \ 'Staged'    :'+',
                \ 'Untracked' :'*',
                \ 'Renamed'   :'->',
                \ 'Unmerged'  :'-',
                \ 'Deleted'   :'X',
                \ 'Dirty'     :'x',
                \ 'Ignored'   :'_',
                \ 'Clean'     :'\//',
                \ 'Unknown'   :'?',
                \ }

" vim-buftabline
"" shortcuts
noremap <Leader>bn :bnext<CR>
noremap <Leader>bp :bprevious<CR>
noremap <Leader>bf :bfirst<CR>
noremap <Leader>bl :blast<CR>

" bracey vim
let g:bracey_auto_start_browser = 1
let g:bracey_refresh_on_save = 1
let g:bracey_eval_on_save = 1
let g:bracey_auto_start_server = 1
let g:bracey_server_allow_remote_connections = 0
let g:bracey_server_port = 8700
"" shortcuts
noremap <Leader>bs :Bracey<CR>
noremap <Leader>bc :BraceyStop<CR>
noremap <Leader>br :BraceyReload<CR>

" airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" lightline
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {'colorscheme': 'wal'}

" nerdtree devicons


" Coc.vim settings

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~           config end            ~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
