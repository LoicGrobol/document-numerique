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
  un cours en vidéo et ses notes (en anglais) de Peter Larsson-Green, donné à l'université de
  Jönköping.
- [« Tutoriel : comprendre les encodages »](http://sdz.tdct.org/sdz/comprendre-les-encodages.html),
  un tutoriel sur le site du zéro. En français, fait quelques références à HTML mais rien qui
  devrait vous empêcher de le lire dès maintenant.

# Caractères, graphèmes, glyphes et encodage

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
- et un bip dordinateur ?

:::

---

Dans l'image suivante, combien y a-t-il de caractères différents ?

[![9 dessins ressemblant à la lettre a en minuscule. Leurs formes sont très différentes, allant du
très traditionnel au presque
illisible](images/506px-A-small_glyphs.svg.png)](https://en.wikipedia.org/wiki/File:A-small_glyphs.svg).

---

« A » et « a », est-ce le même caractèré ?

:::incremental

- et « a » et « à » ?
- et « a » et « *a* » ?
- et « o » et « ο » ?
- Même si je vous dit que le deuxième est la lettre grecque omicron ?

:::

---

Dans la mémoire de ma machine, la phrase « Je reconnais l'existence du kiwi. » est représentée par
la suite de nombres

```text
74, 101, 32, 114, 101, 99, 111, 110, 110, 97, 105, 115, 32, 108, 39, 101, 120, 105, 115, 116, 101, 110, 99, 101, 32, 100, 117, 32, 107, 105, 119, 105, 46
```

Ou en binaire

```text
1001010, 1100101, 100000, 1110010, 1100101, 1100011, 1101111, 1101110, 1101110, 1100001, 1101001, 1110011, 100000, 1101100, 100111, 1100101, 1111000, 1101001, 1110011, 1110100, 1100101, 1101110, 1100011, 1100101, 100000, 1100100, 1110101, 100000, 1101011, 1101001, 1110111, 1101001, 101110
```

Ces nombres sont-ils des caractères ?

## Définitions

La terminologie n'est pas standardisée, la notion de *caractère* est ambigüe et on distingue les
notions de :

- Un **graphème** est une unité élémentaire dans un système d'écriture : les lettres, les
  diacritiques (accents et autres), les logogrames simples…
- Un **glyphe** est une représentation *visuelle* d'un graphème, la seule notion ici qui correspond
  à une *perception*. Par exemple, le glyphe utilisé dans « a » est le glyphe :
  - Correspondant au graphème « lettre a minuscule » de l'alphabet latin.
  - Dans la police *Atkinson Hyperlegible*.
  - En roman (et non en italiques ou en gras).

---

- Un **caractère** est en général défini comme un graphème ou une série de graphème, perçue comme
format une unité.
- Un **encodage** est une représentation numérique d'un caractère dans un système informatique.
  - Elle peut ne pas être unique. Ainsi, en UTF-8, il y a deux représentations possibles pour « à ».

---

En résumé : dans la mémoire de l'ordinateur, un fichier texte correspond à une série de
**caractères** **encodés**, qui sont traduits en **graphèmes**, eux-mêmes représentés à l'écran par
des **glyphes** qui sont ce que vous voyez.

Ce qui nous intéresse dans la suite, c'est la partie **encodage** et on utilisera avec assez peu de
précaution le mot *caractère*, sauf quand la distinction est importante.

# Encodages

## Principe

On l'a dit, un *encodage de caractère*, c'est une façon de représenter des caractères par des
nombres ou des séries de nombres.

Le principe est simple : tout le monde se met d'accord pour décider d'une table de correspondance
commune qui associe à chaque caractère un unique nombre et voilà.

En pratique, historiquement, ça n'a pas été si simple.

---

Pourquoi ? Deux raisons :

:::incremental

- Le manque de volonté :
  - Lié d'abord à l'absence de besoin d'interopérabilité.
  - Et parfois à une volonté délibérer de garder des clients captifs.
- Une contrainte technique : la longueur des messages.
  - Plus le nombre de caractères possibles est grand, plus chacun des caractères prend de place.
  - Il y a des astuces pour limiter cet effet, mais elles ne sont pas toujours optimal
  - *There is no free lunch*.

:::

## ASCII

L'_**A**merican **S**tandard **C**ode for **I**nformation **I**nterchange_ est une des premières
conventions d'encodages à être devenue une norme (*de facto* et *de jure*) à l'usage international.

---

Principes :

- Les caractères sont codés sur 7 bits, soit donne 128 caractères possibles
  - Sur des machines utilisant des mots de 8 bits, le dernier bits peut par exemple servir pour la
    détection d'erreurs.
- Les caractères disponibles sont :
  - L'espace
  - Les lettres de l'alphabet latin sans diacritiques en majuscules et minuscules
  - Les chiffres de 0 à 9
  - Les symboles ```!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~```
  - Des caractères dits « de contrôle » correspondant à des actions

---

|     | ⋅⋅0 | ⋅⋅1 | ⋅⋅2 | ⋅⋅3 | ⋅⋅4 | ⋅⋅5 | ⋅⋅6 | ⋅⋅7 | ⋅⋅8 | ⋅⋅9 |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| 00⋅ | NUL | SOH | STX | ETX | EOT | ENQ | ACK | BEL | BS  | HT  |
| 01⋅ | LF  | VT  | FF  | CR  | SO  | SI  | DLE | DC1 | DC2 | DC3 |
| 02⋅ | DC4 | NAK | SYN | ETB | CAN | EM  | SUB | ESC | FS  | GS  |
| 03⋅ | RS  | US  | SP  |  !  |  "  |  #  |  $  |  %  |  &  |  '  |
| 04⋅ |  (  |  )  |  *  |  +  |  ,  |  -  |  .  |  /  |  0  |  1  |
| 05⋅ |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |  :  |  ;  |
| 06⋅ |  <  |  =  |  >  |  ?  |  @  |  A  |  B  |  C  |  D  |  E  |
| 07⋅ |  F  |  G  |  H  |  I  |  J  |  K  |  L  |  M  |  N  |  O  |
| 08⋅ |  P  |  Q  |  R  |  S  |  T  |  U  |  V  |  W  |  X  |  Y  |
| 09⋅ |  Z  |  [  |  \  |  ]  |  ^  |  _  | \`  |  a  |  b  |  c  |
| 10⋅ |  d  |  e  |  f  |  g  |  h  |  i  |  j  |  k  |  l  |  m  |
| 11⋅ |  n  |  o  |  p  |  q  |  r  |  s  |  t  |  u  |  v  |  w  |
| 12⋅ |  x  |  y  |  z  |  {  | \|  |  }  |  ~  | DEL |     |     |

## Exercice

1. À quelle série de nombres correspond la chaîne de carctères `Vive le TAL!` ?
2. À quelle chaîne de caractère correspond la suite de nombre `085, 080, 088, 060, 051` ?

## Les extensions d'ASCII

Est-ce que vous voyez un problème avec ASCII ?

---

Et est-ce que vous voyez une solution ?

---

La solution qui a été retenue au problème « je peux pas écrire dans ma langue ! » c'est en général
d'utiliser le 8ème bit. Ce qui fait passer à combien de caractères ?

---

256 caractères ça laisse de la place pour pas mal de trucs. Comme des lignes pour dessiner des
tableaux ou un soleil ☼.

Évidemment ça n'est pas assez pour utiliser des systèmes d'ériture logographique ou même simplement
pour tous les alphabets d'Europe.

---

La solution historique c'est donc encore un fois que chaque constructeur définit ses propres
extensions, évidemment incompatibles.

La norme ISO 8859 est une tentative de définir des jeux de caractères standardisés par région
géographique. En particulier, ISO 8859-1, qui permet d'écrire la plupart des alphabets d'Europe de
l'Ouest a connu un succès assez durable pour des raisons qu'on imagine aisément.

# Unicode

# 👀 Exercice 👀
