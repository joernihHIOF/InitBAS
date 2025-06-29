## Temporarily set the CRAN repository to a specific URL
local({
  # Retrieve the current repository settings
  r <- getOption("repos")
  # Update the CRAN repository to use the specified URL
  r["CRAN"] <- "https://cran.uib.no/"
  # Save the updated repository settings in the options
  options(repos = r)
})

# Fixed?
rabc <- (x <- readLines("~/InitBAS/packages/rpkbase.txt"))[!grepl("^#", x)]
lib_path <- paste0(Sys.getenv("HOME"), "/R/x86_64-pc-linux-gnu-library/")
if (!dir.exists(lib_path)) {
    dir.create(lib_path, recursive = TRUE)
}
.libPaths(c(lib_path, .libPaths()))
for (package in rabc) {
    if (!require(package, character.only = TRUE, quietly = TRUE)) {
        install.packages(package, lib = lib_path)
    }
}


#if (!dir.exists(Sys.getenv("R_LIBS_USER"))) {
#  dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE)
#}
#install.packages("ellmer", lib = Sys.getenv("R_LIBS_USER"))
