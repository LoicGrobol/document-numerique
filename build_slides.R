for (slide_file in Sys.glob("slides/*/*.Rmd")) {
    rmarkdown::render(
        slide_file,
        output_dir = "_site/slides",
        output_format = "all"
    )
}
