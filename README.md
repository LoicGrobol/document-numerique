[comment]: <> "LTeX: language=fr"
<!-- markdownlint-disable MD003 MD025 MD033 -->

Décrire et manipuler un document numérique 
===========================================

[![Licence : CC BY 4.0](https://licensebuttons.net/l/by/4.0/80x15.png)](https://creativecommons.org/licenses/by/4.0/)

Contenus pour le cours « Décrire et manipuler un document numérique » de la L2 SDL, parcours LCN,
Université Paris Nanterre.


- [Site du cours](https://loicgrobol.github.io/document-numerique/)
- [Dépôt GitHub](https://github.com/LoicGrobol/document-numerique)

Contact : [<lgrobol@parisnanterre.fr>](mailto:loic.grobol@parisnanterre.fr)

## Ressources

- Les slides sont dans [slides/](slides) et faites en
  [RMarkdown](https://bookdown.org/yihui/rmarkdown). Pour les compiler on peut utiliser la commande
  suivante (en adaptant les noms de fichiers) :

  ```sh
   R -e rmarkdown::render"('slides/lecture-01/lecture-01.Rmd',output_file='lecture-01.html')"
   ```

  Cela nécessite que R et les packages `rmarkdown` et `revealjs` soient installés, voir [la
  doc](https://bookdown.org/yihui/rmarkdown/compile.html) pour plus d'informations. À défaut, on
  peut également les lire comme des fichiers markdown standards.

## Générer le site en local

Dependencies:

- R
- pandoc
- Ruby
  - Bundle

Setup:

```console
Rscript setup_local.R
gem install jekyll bundler
bundle config set --local path 'vendor/bundle'
bundle install
```

Regenerate:

```bash
Rscript build_slides.R
bundle exec jekyll build
bundle exec jekyll serve
```

Astuce pour les pages : Jekyll n'est pas très bon pour les pages qui ne sont pas des postes de blog,
les ajouter dans `_pages` (ce qui fonctionne parce qu'on l'a mis dans `_config.yml`)- et leur donner
un `permalink` dans le header.


## Licences

[![CC BY Licence badge](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)


Copyright © 2021 Loïc Grobol [\<loic.grobol@gmail.com\>](mailto:loic.grobol@gmail.com)

Sauf indication contraire, les fichiers présents dans ce dépôt sont distribués selon les termes de
la licence [Creative Commons Attribution 4.0
International](https://creativecommons.org/licenses/by/4.0/).

Un résumé simplifié de cette licence est disponible à <https://creativecommons.org/licenses/by/4.0/>.

Le texte intégral de cette licence est disponible à
<https://creativecommons.org/licenses/by/4.0/legalcode>

### Exceptions

- Les images `internet-schema-*.png` et `simple-client-server.png` du dossier
  [`slides/04-internet/pics`](slides/04-internet/pics) sont issues [de la documentation web
  MDN](https://github.com/mdn/content) et sont soumises à la licence [CC-BY-SA
  2.5](https://creativecommons.org/licenses/by-sa/2.5/).
