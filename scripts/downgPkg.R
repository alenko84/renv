# downgrading ggplot 
packageVersion('ggplot2')
renv::install('ggplot2@4.0.4')

# update lock.file
renv::status()
renv::snapshot()

# restore to initial version
renv::history()
renv::revert(commit = '62bbf52081444b05cce303b6dc13a5eed42ca0af')
renv::restore()
