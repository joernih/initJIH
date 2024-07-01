rpack <- readLines("packages/rpkbase.txt")                        
print(rpack)
# Check if each package is already installed, if not, install it     
for (package in rpack) {                                          
  if (!(package %in% rownames(installed.packages()))) {              
    install.packages(package)
  }                                                                  
}                                                                    



