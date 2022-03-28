---
title: "Décrire et manipuler un document numérique"
subtitle: "Exercice : de Markdown vers HTML" 
author: Loïc Grobol
date: 2022-03-28
lang: "fr"
output:
  pdf_document:
    latex_engine: "lualatex"
---

À l'aide d'expressions régulières remplacez dans le document en Markdown suivant ces éléments par
leur équivalent en HTML (une regex par type !) :

- Les titres.
- Les `*deux*` types d'`**emphase**`.
- Les liens *inline*.
- Les items de liste ordonnées et non-ordonnées.
- Si vous avez réussi tout le reste : en plus des `<li>`, insérez aussi les `<ul>` et `<ol>`.

```md
# Document structuré et écriture numérique

Un *cours* fantastique, avec des [liens](https://example.com)

- Des listes
- Des [liens](https://example.com) dans des listes!

# Un titre
## Un titre (mais plus petit)
### Encore un titre

## Emphasis

**This is bold text**

__This is bold text__

*This is italic text*

_This is italic text_

Unordered

- Create a list by starting a line with `+`, `-`, or `*`
- Sub-lists are made by indenting 2 spaces:
  - Marker character change forces new list start:
  - Fluctuat nec mergitur
- Very easy!

Ordered

1. Lorem ipsum dolor sit amet
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa

## Links

[link text](https://loicgrobol.github.io/document-numerique)

```