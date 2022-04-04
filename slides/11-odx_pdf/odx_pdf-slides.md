---
title: "Décrire et manipuler un document numérique"
subtitle: "Cours 11: OpenDocument et PDF"
author:
  - "Loïc Grobol `<lgrobol@parisnanterre.fr>`"
institute: Université Paris Nanterre
date: 2022-04-04
output:
  revealjs::revealjs_presentation:
    css: "../reveal_slides_style.css"
    theme: white
    highlight: pygments
    center: true
    reveal_options:
      slideNumber: true
      progress: true,
  pdf_document:
    latex_engine: "lualatex"
lang: "fr"
---

# OpenDocument

## Exercice

1. Téléchargez le fichier [`text.odt`](samples/text.odt) sur votre machine et examinez son contenu.
2. Renommez-le en `text.zip` et décompressez-le
   - Que contient ce fichier zip ?
   - Est-ce que vous pouvez deviner à quoi servent les fichiers/dossiers ?
3. Modifier les fichiers décompressés pour changer le texte du document
4. Recompressez le dossier modifié en `.zip` et renommez-le en `.odt`. Est-ce que votre modification
   a marché ?
5. Faites la même chose pour changer la police principale du document.

# PDF

## Exercice

1. Téléchargez le fichier [`text.pdf`](samples/text.pdf) sur votre machine et examinez son contenu.
2. Ouvrez-le avec un éditeur de texte
   - Que constatez-vous ?
   - Avez-vous une explication ?
3. Ouvrez-le dans [HexEdit](https://hexed.it)
   - Que voyez-vous ?

[Spécification du format PDF](https://web.archive.org/web/20220306202836/https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/pdf_reference_1-7.pdf)