# Temporarily set the CRAN repository to a specific URL
local({
  # Retrieve the current repository settings
  r <- getOption("repos")
  # Update the CRAN repository to use the specified URL
  r["CRAN"] <- "https://cran.uib.no/"
  # Save the updated repository settings in the options
  options(repos = r)
})
<<<<<<< HEAD

# Read in a list of package names from the specified file (one package name per line)
rpack <- (x <- readLines("~/InitBAS/packages/rpkbase.txt"))[!grepl("^#", x)]
# Print out the list of packages to confirm what was read

# Define the library path where packages should be installed; this is constructed using the HOME environment variable and a specific directory structure
library_path <- paste0(Sys.getenv("HOME"),"/R/x86_64-pc-linux-gnu-library/4.4")
# Print out the library path for verification
print(library_path)

# If the library directory does not exist, create it (including any necessary parent directories)
if (!dir.exists(library_path)) {
  dir.create(library_path, recursive = TRUE)
}

# Loop through each package in the list
for (package in rpack) {
  # Check if the package is not already installed by looking at the row names of installed.packages()
  if (!(package %in% rownames(installed.packages()))) {
    # If the package is not installed, install it from CRAN using the previously set repository
    install.packages(package)
  }
}

# /home/joernih/R/x86_64-pc-linux-gnu-library/4.4
=======
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
>>>>>>> 74a8361866f4925897f441ba0eb8d64eedb01ca0

