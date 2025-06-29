## Temporarily set the CRAN repository to a specific URL
local({
  # Retrieve the current repository settings
  r <- getOption("repos")
  # Update the CRAN repository to use the specified URL
  r["CRAN"] <- "https://cran.uib.no/"
  # Save the updated repository settings in the options
  options(repos = r)
})

rabc <- (x <- readLines("~/InitBAS/packages/rpkbase.txt"))[!grepl("^#", x)]
rpack <- .libPaths()[1]
lib_path <- paste0(Sys.getenv("HOME"), "/R/x86_64-pc-linux-gnu-library/")
for (package in rabc) {
    if (!require(package, character.only = TRUE, quietly = TRUE)) {
        install.packages(package)
    }
}


