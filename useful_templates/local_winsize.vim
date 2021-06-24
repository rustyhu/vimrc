source ~/vimrc/.vimrc

""""" TEST
if has('gui_running')
  " win size for double-screen 23" plus 14" notebook
  let g:winpos_h = 920
  let g:winpos_v = 0
  call GUIWinSize()
endif
