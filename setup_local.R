install.packages("renv", repos = "https://cloud.r-project.org/")
renv::init()
renv::install()
tryCatch(
    tinytex::install_tinytex(),
    error = function(err) {
        print(err)
    }
)
tinytex::tlmgr_update()
