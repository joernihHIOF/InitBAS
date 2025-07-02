dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE, showWarnings = FALSE)



#install.packages("ellmer")
#rpack <- .libPaths()[1]
#print(rpack)
#lib_path <- paste0(Sys.getenv("HOME"), "/R/x86_64-pc-linux-gnu-library/", rpack)
#if (!dir.exists(lib_path)) {                                                                            dir.create(lib_path, recursive = TRUE)                                                              
#}                                                                                                     
#for (package in rabc) {                                          
#  if ((!package %in% rownames(installed.packages()))) {              
#    print(rpack)
#    install.packages(package)
#  }                                                                  
#}                                                                    
#
#reticulate::py_require("numpy")
#reticulate::py_require("sympy")
#reticulate::py_require("pandas")
#
#
#



#> install.packages("ellmer")
#Warning in install.packages("ellmer") :
#  'lib = "/usr/lib/R/library"' is not writable
#Would you like to use a personal library instead? (yes/No/cancel) 
## Temporarily set the CRAN repository to a specific URL
#local({
#  # Retrieve the current repository settings
#  r <- getOption("repos")
#  # Update the CRAN repository to use the specified URL
#  r["CRAN"] <- "https://cran.uib.no/"
#  # Save the updated repository settings in the options
#  options(repos = r)
#})
#
#rabc <- (x <- readLines("~/InitBAS/packages/rpkbase.txt"))[!grepl("^#", x)]
#rpack <- .libPaths()[1]
#lib_path <- paste0(Sys.getenv("HOME"), "/R/x86_64-pc-linux-gnu-library/", rpack)
#if (!dir.exists(lib_path)) {                                                                            dir.create(lib_path, recursive = TRUE)                                                              
#}                                                                                                     
#for (package in rabc) {                                          
#  if ((!package %in% rownames(installed.packages()))) {              
#    print(rpack)
#    install.packages(package)
#  }                                                                  
#}                                                                    
#
#reticulate::py_require("numpy")
#reticulate::py_require("sympy")
#reticulate::py_require("pandas")
#
#
#
