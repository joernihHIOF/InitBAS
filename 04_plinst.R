# Temporarily set the CRAN repository to a specific URL
local({
  # Retrieve the current repository settings
  r <- getOption("repos")
  # Update the CRAN repository to use the specified URL
  r["CRAN"] <- "https://cran.uib.no/"
  # Save the updated repository settings in the options
  options(repos = r)
})
rpack <- readLines("~/InitBAS/packages/rpkbase.txt")                        
# Check if each package is already installed, if not, install it     
r_version <- paste(R.version$major, R.version$minor, sep = ".")
library_path <- paste0(Sys.getenv("HOME"), "/R/x86_64-pc-linux-gnu-library/", r_version)
#library_path <- paste0(Sys.getenv("HOME"),"/R/x86_64-pc-linux-gnu-library/4.5")
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

