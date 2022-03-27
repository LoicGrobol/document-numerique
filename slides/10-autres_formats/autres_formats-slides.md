---
title: "Décrire et manipuler un document numérique"
subtitle: "Cours 10: Autres formats de documents"
author:
  - "Loïc Grobol `<lgrobol@parisnanterre.fr>`"
institute: Université Paris Nanterre
date: 2022-03-28
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

# Markdown

Markdown est un format de documents créé par Aaron Swartz et John Gruber en 2004 sur les principes
suivants :

- Facile à lire et à éditer par des humains sans outil spécialisé.
- Facile à convertir dans d'autres formats numériques standard : par défaut en HTML.

Le nom est un jeu de mot sur *markup*, qui désigne les formats dits « balisés » comme HTML ou XML.

---

La spécification originale et un programme pour convertir de Markdown ont été publiés à
<https://daringfireball.net/projects/markdown> en 2004.

Cette spécification est volontairement informelle, un des objectifs étant de permettre des
évolutions futures vers des formats dérivés (ou *dialectes**) de Markdown adaptés à différents
usages, ce qui a effectivement été le cas.

La légèreté du format a permis son inclusion dans énormément d'applications. Essentiellement, si
vous voulez proposer du texte formaté en évitant de créer un éditeur WYSIWIG, Markdown est une bonne
solution.

---

Pour visualiser, tester et expérimenter avec Markdown, vous pouvez utiliser un des nombreux éditeurs
en ligne disponible, par exemple <https://dillinger.io> ou un éditeur local comme
[Marktext](https://marktext.app).

Évidemment — c'est tout le principe —, vous pouvez aussi écrire en Markdown dans n'importe quel
éditeur de texte (bloc note, notepad++, …).

## Syntaxe

La spécification originale décrit Markdown en termes de balises HTML, et on va faire pareil.

Un fichier Markdown est un fichier texte, généralement avec l'extension `.md`, qui comprend du
texte, ainsi que des annotations de format et structures, qui utilisent exclusivement des caractères
non alphabétiques.

Ce qui suit est une brève introduction à la syntaxe. Voir par exemple les spécifications
[GFM](https://github.github.com/gfm) ou [Pandoc](https://pandoc.org/MANUAL.html) pour des dialectes
modernes et complets.

---

### Base

En Markdown, on écrit du texte en l'écrivant. Plus clairement :

```md
Ceci est un texte.
```

Équivaut en HTML à

```html
<p>Ceci est un texte.</p>
```

---

Les espaces multiples ne sont pas préservées et un retour à la ligne équivaut à une espace. En
revanche une ligne blanche marque un changement de paragraphe.

```md
Ceci est un texte.
Le paragraphe     continue ici.

Mais ici c'est en est un autre.
```

```html
<p>Ceci est un texte. Le paragraphe continue ici.</p>
<p>Mais ici c'en est un autre</p>
```

---

### Emphase

Markdown a, comme HTML, deux niveaux d'emphase :

- `*hello*` équivaut à `<em>hello</em>` et est en général marqué en italiques.
- `**hello**` équivaut à `<strong>hello</strong>` et est en général marqué en gras.

```md
Ceci est **un** texte *avec* emphase.
```

```html
<p>Ceci est <strong>un</strong> texte <em>avec</em> emphase.
```

On peut utiliser `_` à la place de `*`

---

### Titres

Les titres sont notés en débutant une ligne avec autant de `#` que le niveau voulu :

```md
# Titre de niveau 1
## Titre de niveau 2
### Titre de niveau 3
```

```html
<h1>Titre de niveau 1</h1>
<h2>Titre de niveau 2</h2>
<h3>Titre de niveau 3</h3>
```

---

### Listes non-ordonnées

Les listes non-ordonnées se notent en démarrant une ligne par `-`, `*` ou `+`.
Elles sont séparées par des lignes blanches.

```md
- un item
- un autre item

- un autre item dans une autre liste
- et un autre
```

```html
<ul>
<li>un item</li>
<li>un autre item</li>
</ul>

<ul>
<li>un autre item dans une autre liste</li>
<li>et un autre</li>
</ul>
```

---

On peut également créer des sous-listes, signalées par l'indentation

```md
- un item
  sur plusieurs lignes
- un autre item
  - avec 
  - des sous-items
```

```html
<ul>
<li>un item sur plusieurs lignes</li>
<li>un autre item
  <ul>
  <li>avec</li>
  <li>des sous-items</li>
  </ul>
</li>
</ul>
```

---

### Lien

Les liens hypertextes peuvent être notés *inline*

```md
Voici un [lien](http://example.com) inline.
```

```html
Voici un <a href="http://example.com">lien</a> inline.
```

---

Ils peuvent aussi être référencés ailleurs dans le document en leur donnant une étiquette arbitraire

```md
Voici un [lien][adddddddresse] étiqueté.
…
[adddddddresse]: http://example.com
```

```html
Voici un <a href="http://example.com">lien</a> étiqueté.
```

## Éditeurs avancés

## Documents exécutables

# OpenDocument

## Historique

# PDF
