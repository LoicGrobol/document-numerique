---
title: "Décrire et manipuler un document numérique"
subtitle: "Cours 5 : HTML"
author: Loïc Grobol
date: 2022-02-14
lang: fr-FR
output:
  revealjs::revealjs_presentation:
    css: "../reveal_slides_style.css"
    theme: white
    highlight: pygments
    reveal_options:
      slideNumber: true
      progress: true
  pdf_document:
    latex_engine: "lualatex"
---


# HTML

_**H**yper**t**ext **M**arkup **L**anguage_

- Créé autour de 1991 par Tim Berners-Lee
  - Avec les adresses URL et le protocole HTTP c'est ce qui fait le web
  - Objectif : un format simple pour décrire des documents textuels structurés, incluant des
    ressources multimédia et **liés** entre eux.
- À l'origine un cas particulier de SGML, s'en éloigne avec le temps
- Toujours en évolution pour s'adapter aux usages

---

```html
<html>
  <head>
    <title>Le titre de la page</title>
  </head>
  <body>
    <h1>Un sous-titre de niveau 1</h1>
    <section>
      <p>Bonjour, tout le <a href="https://fr.wikipedia.org/wiki/Hello_world">monde</a></p>
    </section>
  </body>
</html>
```

## Balises

Les éléments entre *chevrons* `<` et `>` sont des **balises** (*tags*, *elements*)

```html
<title>This is a title</title>
```

---

Les balises **structurent** le document :

```text
html
├─ head
└─ body
   ├─ h1
   └─ section
      └─ p
```

---

Elles le séparent en en-tête (`<head>`) et contenu (`<body>`)

- Dans `<head>`, les éléments (comme `<title>`) indiquent des métadonnées.
- Dans `<body>`, ils ont plusieurs rôles, [entre autres](https://html.spec.whatwg.org/multipage/indices.html#element-content-categories) :
  - Décrire une structure hiérarchique (`<section>`, `<p>`…)
  - Indiquer un titre (`<h1>`, `<h2>`…)
  - Enrichir le texte éléments (`<a>`…)

<small>Approximations très grossières.</small>

---

Les balises peuvent aussi contenir des métadonnées, comme la cible d'un lien :

```html
<a href="https://fr.wikipedia.org/wiki/Hello_world">monde</a>
```

---

En principe, l'information donnée est purement **sémantique** : on ne code pas la mise en forme.

## Pourquoi des chevrons ?

C'est une convention historique d'annotation, recyclée

- Dans son usage philologique, s’utilise par paires et sert à ajouter un mot, un groupe
  de mots, un élément conjecturel dans une édition généralement scientifique.
- Sert de parenthèse qui permet d’isoler une portion de texte en l’isolant de la
  situation de communication.

## TODO

Tutoriels sur MDN :

- [Les bases de
  HTML](https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/HTML_basics)
- [Introduction à HTML](https://developer.mozilla.org/fr/docs/Learn/HTML/Introduction_to_HTML)
  (interactif)
