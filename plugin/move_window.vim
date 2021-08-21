if &compatible || exists('g:move_window#loaded')
    finish
endif

let s:cpo_save = &cpoptions
let s:move_window_version = '0.1.0'

let g:move_window#enable_mappings = get(g:, 'move_window#enable_mappings', 1)

nnoremap <buffer> <silent> <Plug>(YankWindow)        :<c-u>call move_window#yank(0)<cr>
nnoremap <buffer> <silent> <Plug>(YankWindowAndQuit) :<c-u>call move_window#yank(1)<cr>
nnoremap <buffer> <silent> <Plug>(PasteWindowLeft)   :<c-u>call move_window#paste('left', 0)<cr>
nnoremap <buffer> <silent> <Plug>(PasteWindowDown)   :<c-u>call move_window#paste('down', 0)<cr>
nnoremap <buffer> <silent> <Plug>(PasteWindowUp)     :<c-u>call move_window#paste('up', 0)<cr>
nnoremap <buffer> <silent> <Plug>(PasteWindowRight)  :<c-u>call move_window#paste('right', 0)<cr>

if g:move_window#enable_mappings
    nmap <silent> <c-w>yy <Plug>(YankWindow)
    nmap <silent> <c-w>yq <Plug>(YankWindowAndQuit)
    nmap <silent> <c-w>pl <Plug>(PasteWindowLeft)
    nmap <silent> <c-w>pj <Plug>(PasteWindowDown)
    nmap <silent> <c-w>pk <Plug>(PasteWindowUp)
    nmap <silent> <c-w>ph <Plug>(PasteWindowRight)
endif

let g:move_window#loaded = 1
let &cpoptions = s:cpo_save
