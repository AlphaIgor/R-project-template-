# Sample Rprofile.site file

# Things you might want to change
# options(papersize="a4")
# options(editor="notepad")
# options(pager="internal")

# R interactive prompt
# options(prompt="> ")
# options(continue="+ ")

# to prefer Compiled HTML
# help options(chmhelp=TRUE)
# to prefer HTML help
# options(htmlhelp=TRUE)

.First <- function(){

  cat("\f")
  cat("\nWelcome at", date(), "\n")
  cat("====", "\n")
  cat(paste("R version:",R.Version()$version.string), "\n")
  cat(paste("R nickname:",R.Version()$nickname), "\n")
  cat("====", "\n")
  cat("Loaded packages:",paste(c(.old,.new),collapse=", "), "\n")

}


# General options
options(tab.width = 2)
options(width = 130)
options(graphics.record=TRUE)

.old <- getOption("defaultPackages")
.new <- c("data.table","ggplot2","dplyr","magrittr","plumber","microbenchmark","glue")
options(defaultPackages = c(.old,.new))




.Last <- function(){
  cat("\nGoodbye at ", date(), "\n")
}


