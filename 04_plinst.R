if (!dir.exists(Sys.getenv("R_LIBS_USER"))) {
  dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE)
}

spack <- (x <- readLines("~/InitBAS/packages/rpkbase.txt"))[!grepl("^#", x)]
for (pins in spack) {                                          
  if ((!pins %in% rownames(installed.packages()))) {              
    print(pins)
    install.packages(pins)
  }                                                                  
}                                                                    

reticulate::py_require("numpy")
reticulate::py_require("sympy")
reticulate::py_require("pandas")



