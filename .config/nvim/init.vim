" Plugins
call plug#begin("~/.config/nvim/plugins")
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Pocco81/AutoSave.nvim'
"  Plug 'sainnhe/everforest'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ap/vim-css-color'
  Plug 'jiangmiao/auto-pairs'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'glepnir/dashboard-nvim'
  Plug 'ellisonleao/glow.nvim'
  Plug 'numToStr/FTerm.nvim'
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

" Vim configuration
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
set noshowmode
set number
set mouse=a
set termguicolors
colorscheme catppuccin
let bufferline = get(g:, 'bufferline', {})
let bufferline.no_name_title = "New Tab"
let g:airline_right_sep = ' '
let g:airline_left_sep = ' '
let g:airline_symbols.linenr = '並 '
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
let g:glow_border = "rounded"
" Dashboard configuration
let g:dashboard_default_executive ='telescope'
let g:dashboard_custom_header =<< trim END
⠀        ████                      ████        
⠀      ██░░░░██                  ██░░░░██      
⠀      ██░░░░██                  ██░░░░██      
⠀    ██░░░░░░░░██████████████████░░░░░░░░██    
⠀    ██░░░░░░░░▓▓▓▓░░▓▓▓▓▓▓░░▓▓▓▓░░░░░░░░██    
⠀    ██░░░░░░░░▓▓▓▓░░▓▓▓▓▓▓░░▓▓▓▓░░░░░░░░██    
⠀  ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██  
⠀  ██░░██░░░░████░░░░░░░░░░░░░░████░░░░██░░██  
⠀  ██░░░░██░░████░░░░░░██░░░░░░████░░██░░░░██  
⠀██░░░░██░░░░░░░░░░░░██████░░░░░░░░░░░░██░░░░██
⠀██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██
⠀██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██
⠀██▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▓▓██
⠀██▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▓▓██
⠀██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██

⠀              Welcome to NeoVim!
END
" Telescope keybinds
nnoremap <C-f> :Telescope<CR>
inoremap <C-f> <Esc>:Telescope<CR>i
" tab spacing
set tabstop=4
set shiftwidth=4
set expandtab
" tabs
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-w>     :BufferClose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-w>     <Esc>:BufferClose<CR>
" system clipboard
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
" use <c-r> to insert original character without triggering things like auto-pairs
inoremap <c-r> <c-v>
" Neovide configuration
set guifont=Iosevka\ Nerd\ Font:h12
" let g:neovide_transparency = 0.75
" Lua
lua <<EOF
require("autosave").setup(
    {
	enabled = true,
	execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
	events = {"InsertLeave", "TextChanged"},
	write_all_buffers = false,
	on_off_commands = true,
	clean_command_line_interval = 0,
	debounce_delay = 135
   }
)
require'nvim-tree'.setup()
require'FTerm'.setup(
{
    border = 'none',
    blend = 10,
    dimensions = {
        height = 0.6,
        width = 0.6
    }
}
)
EOF
" Terminal keybinds
nnoremap <C-`> :lua require('FTerm').toggle()<CR>
inoremap <C-`> <Esc>:lua require('FTerm').toggle()<CR>i
" Tree Function
let g:treeopen = 0
function! ToggleTree()
    if (g:treeopen == 0)
        lua require'bufferline.state'.set_offset(30, 'Files')
        NvimTreeOpen
        let g:treeopen = 1 
    else
        lua require'bufferline.state'.set_offset(0)
        NvimTreeClose
        let g:treeopen = 0
    endif
endfunction
" Tree keybind
nnoremap <C-w> :call ToggleTree()<CR>
inoremap <C-w> <Esc>:call ToggleTree()<CR>i
