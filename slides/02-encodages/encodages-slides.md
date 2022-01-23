---
title: "Décrire et manipuler un document numérique"
subtitle: "Cours 2 : Encodage et représentation des caractères"
author: Loïc Grobol
date: 2022-01-24
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

# Matériel complémentaire

- [« *The Absolute Minimum Every Software Developer Absolutely, Positively Must Know About Unicode
  and Character Sets (No
  Excuses!)* »](https://www.joelonsoftware.com/2003/10/08/the-absolute-minimum-every-software-developer-absolutely-positively-must-know-about-unicode-and-character-sets-no-excuses/),
  un article de Joel Spolsky, simple et bien écrit (en anglais) qui reprend les points de ce cours
  avec une prose différente.
- [« *Character
  Encodings* »](https://peppel-g.github.io/course-material/lectures/character-encodings/#lecture-material),
  un cours en vidéo et ses notes (en anglais) de Peter Larsson-Green à l'université de Jönköping.
- [« Tutoriel : comprendre les encodages »](http://sdz.tdct.org/sdz/comprendre-les-encodages.html),
  un tutoriel sur le site du zéro. En français, fait quelques références à HTML mais rien qui
  devrait vous empêcher de le lire dès maintenant.

# Caractères, glyphes, encodage

## Un caractère, c'est quoi ?

Donnez des exemples.

---

Est-ce que « a » est un caractère ?

:::incremental

- et « 1 » ?
- et « α » ?
- et « é » ?
- et « @ » ?
- et « + » ?

:::

---

:::incremental

- et «   » ?
- et « ¨ » ?
- et « 話 » ?
- et « 🧐 » ?
- et « 🤷🏻 » ?
- et « 🏳‍⚧ » ?
- et un bip d'ordinateur ?

:::

---

Dans l'image suivante, combien y a-t-il de caractères différents ?

[![9 dessins ressemblant à la lettre a en minuscule. Leurs formes sont très différentes, allant du
très traditionnel au presque
illisible](images/A-small_glyphs.svg)](https://en.wikipedia.org/wiki/File:A-small_glyphs.svg).

---

Dans la mémoire de ma machine, la phrase « Je reconnais l'existence du kiwi. » est représentée par: `r pi^2`

```{r}
asc("Je reconnais l'existence du kiwi.")
2+2
```

# ASCII et ses extensions

# Exercice

# Unicode

# 👀 Exercice 👀
