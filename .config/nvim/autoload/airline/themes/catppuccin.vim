if get(g:, 'catppuccin_termcolors', 256) == 16
  let s:term_red = 1
  let s:term_green = 2
  let s:term_yellow = 3
  let s:term_blue = 4
  let s:term_purple = 5
  let s:term_white = 7
  let s:term_black = 0
  let s:term_grey = 8
else
  let s:term_red = 204
  let s:term_green = 114
  let s:term_yellow = 180
  let s:term_blue = 39
  let s:term_purple = 170
  let s:term_white = 145
  let s:term_black = 235
  let s:term_grey = 236
endif

let g:airline#themes#catppuccin#palette = {}

let g:airline#themes#catppuccin#palette.accents = {
      \ 'red': [ '#F28FAD', '', s:term_red, 0 ]
      \ }

let s:N1 = [ '#302d41', '#DDB6F2', s:term_black, s:term_green ]
let s:N2 = [ '#6E6C7E', '#575268', s:term_white, s:term_grey ]
let s:N3 = [ '#DDB6F2', '#302d41', s:term_green, '' ]
let g:airline#themes#catppuccin#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let group = airline#themes#get_highlight('vimCommand')
let g:airline#themes#catppuccin#palette.normal_modified = {
      \ 'airline_c': [ group[0], '', group[2], '', '' ]
      \ }

let s:I1 = [ '#302d41', '#96CDFB', s:term_black, s:term_blue ]
let s:I2 = s:N2
let s:I3 = [ '#96CDFB', '#302d41', s:term_blue, '' ]
let g:airline#themes#catppuccin#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#catppuccin#palette.insert_modified = g:airline#themes#catppuccin#palette.normal_modified

let s:R1 = [ '#302d41', '#F28FAD', s:term_black, s:term_red ]
let s:R2 = s:N2
let s:R3 = [ '#F28FAD', '#302d41', s:term_red, '' ]
let g:airline#themes#catppuccin#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#catppuccin#palette.replace_modified = g:airline#themes#catppuccin#palette.normal_modified

let s:V1 = [ '#302d41', '#DDB6F2', s:term_black, s:term_purple ]
let s:V2 = s:N2
let s:V3 = [ '#DDB6F2', '#302d41', s:term_purple, '' ]
let g:airline#themes#catppuccin#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#catppuccin#palette.visual_modified = g:airline#themes#catppuccin#palette.normal_modified

let s:IA1 = [ '#302d41', '#6E6C7E', s:term_black, s:term_white ]
let s:IA2 = [ '#6E6C7E', '#575268', s:term_white, s:term_grey ]
let s:IA3 = s:N2
let g:airline#themes#catppuccin#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#catppuccin#palette.inactive_modified = {
      \ 'airline_c': [ group[0], '', group[2], '', '' ]
      \ }

" Warning/Error styling code from vim-airline's ["base16" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/base16.vim)

" Warnings
let s:WI = [ '#302d41', '#F8BD96', s:term_black, s:term_yellow ]
let g:airline#themes#catppuccin#palette.normal.airline_warning = [
      \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
      \ ]

let g:airline#themes#catppuccin#palette.normal_modified.airline_warning =
    \ g:airline#themes#catppuccin#palette.normal.airline_warning

let g:airline#themes#catppuccin#palette.insert.airline_warning =
    \ g:airline#themes#catppuccin#palette.normal.airline_warning

let g:airline#themes#catppuccin#palette.insert_modified.airline_warning =
    \ g:airline#themes#catppuccin#palette.normal.airline_warning

let g:airline#themes#catppuccin#palette.visual.airline_warning =
    \ g:airline#themes#catppuccin#palette.normal.airline_warning

let g:airline#themes#catppuccin#palette.visual_modified.airline_warning =
    \ g:airline#themes#catppuccin#palette.normal.airline_warning

let g:airline#themes#catppuccin#palette.replace.airline_warning =
    \ g:airline#themes#catppuccin#palette.normal.airline_warning

let g:airline#themes#catppuccin#palette.replace_modified.airline_warning =
    \ g:airline#themes#catppuccin#palette.normal.airline_warning

" Errors
let s:ER = [ '#302d41', '#F28FAD', s:term_black, s:term_red ]
let g:airline#themes#catppuccin#palette.normal.airline_error = [
      \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
      \ ]

let g:airline#themes#catppuccin#palette.normal_modified.airline_error =
    \ g:airline#themes#catppuccin#palette.normal.airline_error

let g:airline#themes#catppuccin#palette.insert.airline_error =
    \ g:airline#themes#catppuccin#palette.normal.airline_error

let g:airline#themes#catppuccin#palette.insert_modified.airline_error =
    \ g:airline#themes#catppuccin#palette.normal.airline_error

let g:airline#themes#catppuccin#palette.visual.airline_error =
    \ g:airline#themes#catppuccin#palette.normal.airline_error

let g:airline#themes#catppuccin#palette.visual_modified.airline_error =
    \ g:airline#themes#catppuccin#palette.normal.airline_error

let g:airline#themes#catppuccin#palette.replace.airline_error =
    \ g:airline#themes#catppuccin#palette.normal.airline_error

let g:airline#themes#catppuccin#palette.replace_modified.airline_error =
    \ g:airline#themes#catppuccin#palette.normal.airline_error
