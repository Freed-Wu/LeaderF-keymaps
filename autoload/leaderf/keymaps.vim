function! leaderf#keymaps#source(args) abort
	let l:keymaps = [' ']
	for s:keymap_path in split(glob($VIMRUNTIME . '/keymap/*.vim'))
		let l:keymaps += [fnamemodify(s:keymap_path, ':t:r')]
	endfor
	return l:keymaps
endfunction

function! leaderf#keymaps#accept(line, args) abort
	execute 'set keymap=' . a:line
endfunction

function! leaderf#keymaps#bang_enter(orig_buf_nr, orig_cursor, args) abort
	call search('^ $')
	redraw
endfunction
