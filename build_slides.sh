mkdir -p _site
cp -R slides _site
for f in slides/*/*.qmd; do
    quarto render $f --to="all";
done;
