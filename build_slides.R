renv::activate()
for (slide_file in Sys.glob("slides/*/*.Rmd")) {
    quarto::render(
        slide_file,
        output_dir = "_site/slides",
        output_format = "all"
    )
}
