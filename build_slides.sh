for f in slides/*/*.qmd; do
    quarto render $f --to="all";
done;
