if !exists('g:Lf_Extensions')
	let g:Lf_Extensions = {}
endif

let g:Lf_Extensions.keymaps = {
			\ 'source': 'leaderf#keymaps#source',
			\ 'accept': 'leaderf#keymaps#accept',
			\ 'bang_enter': 'leaderf#keymaps#bang_enter',
			\ 'highlights_def': {
			\ 'Lf_hl_keymapsTitle': '^[^_]\+',
			\ 'Lf_hl_keymapsEncoding': '_\zs.\+',
			\ },
			\ 'highlights_cmd': [
			\ 'hi link Lf_hl_keymapsTitle Title',
			\ 'hi link Lf_hl_keymapsEncoding Comment',
			\ ],
			\ }

