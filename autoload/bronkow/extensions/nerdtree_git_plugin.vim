fun! bronkow#extensions#nerdtree_git_plugin#init(colors)
  let h = bronkow#helper#new(a:colors)

  call h.hilight('NERDTreeGitStatusDirClean',  'green1')
  call h.hilight('NERDTreeGitStatusDirDirty',  'orange2')
  call h.hilight('NERDTreeGitStatusModified',  'blue1')
  call h.hilight('NERDTreeGitStatusRenamed',   'red1')
  call h.hilight('NERDTreeGitStatusStaged',    'green2')
  call h.hilight('NERDTreeGitStatusUnmerged',  'shade1')
  call h.hilight('NERDTreeGitStatusUntracked', 'green3')
endfun
