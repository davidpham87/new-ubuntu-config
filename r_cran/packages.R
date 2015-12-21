#!/bin/R

options('repos'="http://stat.ethz.ch/CRAN") # Change to your convenience
update.packages(ask=FALSE)

## Run this in terminal
## sudo apt-get install libcurl4-openssl-dev
install.packages('RCurl')

pckgs <- c('ggplot2', # graphics
           'devtools', # development tools
           'data.table', # faster data.frame
           'Rcpp', # Interface between C++ and R
           'dplyr', # one another data.frame implementation
           'RColorBrewer', # Colors
           'rmarkdown', # Dynamic reports http://rmarkdown.rstudio.com/
           'knitr', # Html report (superseed by rmarkdown)
           'gtools', # defmacro
           'sfsmisc' # a lot of cool functions for data analysis
           )

install.packages(pckgs)

install.packages('glmnet') # glmnet: Lasso and elastic-net regularized
                           # generalized linear models
install.packages('earth') # earth: Multivariate Adaptive Regression Spline
                          # Models
install.packages('e1071') # e1071: SVM regression Misc Functions of the
                          # Department of Statistics (e1071), TU Wien
install.packages('randomForest') # e1071: SVM regression Misc Functions of the
                                 # Department of Statistics (e1071), TU Wien
install.packages('timeDate') # timeDate: Rmetrics - Chronological and Calendar
                                        # Objects

install.packages('xts') # xts: eXtensible Time Series
install.packages('zoo') # zoo: S3 Infrastructure for Regular and Irregular Time
                        # Series (Z's ordered observations)

install.packages('caret') # caret: Classification and Regression Training : Misc
                          # functions for training and plotting classification
                          # and regression models
install.packages('kernlab') # kernlab: Kernel-based Machine Learning Lab

install.packages('doMC') # doMC: Foreach parallel adaptor for the multicore
                         # package

install.packages(c('scrarpeR', 'XML')) # Web scrapping

install.packages('yaml') # rmarkdown

install.packages('devtools')
require(devtools)

install.packages('shiny') # shiny apps <-> simple webapps
# install.packages('shinythemes')
devtools::install_github("rstudio/shinyapps")

install.packages('quantmod') # quantmod: Quantitative Financial Modelling
                             # Framework

install.packages('TTR') # TTR: Technical Trading Rules
install.packages('PerformanceAnalytics') # PerformanceAnalytics: Econometric
                                         # tools for performance and risk
                                         # analysis
install.packages('Quandl') # Getting data from quandl

## In order to install this one
install.packages('RQuantLib') # R Interface to the QuantLib Library


install.packages('pkgKitten') # package creation
install.packages('ggthemes')  # ggthemes: Extra Themes, Scales and
                                        # Geoms for 'ggplot2'

devtools::install_github('hrbrmstr/metricsgraphics') # metricgraphics.js
install.packages('dygraphs') # dygraphs
install.packages('networkD3') # D3 JavaScript Network Graphs from R

install.packages('microbenchmark')

# sudo R -e "options('repos'='http://stat.ethz.ch/CRAN');update.packages('/usr/lib/R/library', ask=FALSE)"
