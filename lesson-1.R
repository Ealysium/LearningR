## Scripting in the editor

vals <- c(5, 6, 12)

data <- data.frame(counts = vals)

## Anatomy of a function


## Change the url for the origin repo

system('git remote set-url origin https://github.com/Ealysium/LearningR.git')

## Install missing packages

requirements <- c('tidyr',
                  'ggplot2',
                  'RSQLite',
                  'rmarkdown')
missing <- setdiff(requirements,
                   rownames(installed.packages()))

if (length(missing) != 0) {
  install.packages(missing)
}
#caralho