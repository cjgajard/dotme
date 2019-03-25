let b:ale_linters = ['javac']
let g:ale_java_javac_classpath = 'src'
let g:ale_java_javac_options = ' -bootclasspath '.$PLATFORM

if index(NERDTreeIgnore, 'obj') < 0
   let NERDTreeIgnore = add(NERDTreeIgnore, 'obj')
endif
