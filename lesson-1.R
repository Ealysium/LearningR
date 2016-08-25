## Scripting in the editor

vals <- c(5, 6, 12)

data <- data.frame(counts = vals)

## Anatomy of a function


## Change the url for the origin repo

system('git remote set-url origin ...')

## Install missing packages

requirements <- c('tidyr',
                  'ggplot2',
                  'RSQLite',
                  'rmarkdown')
missing <- setdiff(...,
                   rownames(installed.packages()))

if (...) {
  install.packages(missing)
}
