---
title: "Décrire et manipuler un document numérique"
subtitle: "Correction : de Markdown vers HTML" 
author: Loïc Grobol
date: 2022-04-04
lang: "fr"
output:
  pdf_document:
    latex_engine: "lualatex"
---

# Énoncé

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

# Correction

## Titres

- `h1` : rechercher `#\s(.*)$.`, remplacer `<h1>$1</h1>`.
- `h2` : rechercher `##\s(.*)$.`, remplacer `<h2>$1</h2>`.
- …

## Emphase

- Gras : rechercher `\*\*([^*]*)\*\*`, remplacer par `<strong>$1</strong>`.
- Italiques : rechercher `\*([^*]*)\*`, remplacer par `<em>$1</em>`.

## Liens inline

Rechercher

```regexp
\[([^\]])\]\(([^)])\)
```

Remplacer par

```regexp
<a href="$2">$1</a>
```

## Items de listes

- Non-ordonnées : rechercher `^\s*-\s(.*)$`, remplacer par `<li>$1</li>`.
- Ordonnées : rechercher `^\s*\d+\.\s(.*)$`, remplacer par `<li>$1</li>`.

## Liste

C'est assez imparfait, mais si on suppose que les listes sont comprises entre deux lignes blanches
et n'en contiennent pas, on peut essayer en mode multiligne de rechercher :

```regexp
\n\n(-\s.*)\n\n
```

et remplacer par

```regexp
<ul>
$1
</ul>
```

Mais c'est vraiment un abus des expressions régulières : quand on arrive à ce stade, il faut
commencer à écrire des analyseurs, ce qui est d'ailleurs étonnament compliqué pour Markdown.