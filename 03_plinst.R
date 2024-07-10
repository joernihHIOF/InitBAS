local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cran.uib.no/"
  options(repos = r)
})
rpack <- readLines("~/InitBAS/packages/rpkbase.txt")                        
# Check if each package is already installed, if not, install it     
library_path <- paste0(Sys.getenv("HOME"),"/R/x86_64-pc-linux-gnu-library/4.4")
print(library_path)
if (!dir.exists(library_path)) {                                                                          
  dir.create(library_path, recursive = TRUE)                                                              
}                                                                                                         
for (package in rpack) {                                          
  if (!(package %in% rownames(installed.packages()))) {              
    install.packages(package)
  }                                                                  
}                                                                    



# py_install("numba")

