---
title: "Décrire et manipuler un document numérique"
subtitle: "Correction exercice collège communautaire CSS"
author: Loïc Grobol
date: 2022-03-07
lang: fr-FR
output:
  pdf_document:
    latex_engine: "lualatex"
---

<!-- LTeX: language=fr -->

Correction exercice collège communautaire CSS
=============================================

## Solution

Voici une solution complète, voir ci-dessous pour les commentaires détaillés

```css
/* General setup */

* {
  box-sizing: border-box;
}

body {
  margin: 0 auto;
  min-width: 1000px;
  max-width: 1400px;
}

/* Layout */

section {
  float: left;
  width: 50%;
}

aside {
  float: left;
  width: 30%;
}

nav {
  float: left;
  width: 20%;
}

footer {
  clear: both;
}

header, section, aside, nav, footer {
  padding: 20px;
}

/* header and footer */

header, footer {
  border-top: 5px solid #6F00FF;
  border-bottom: 5px solid #6F00FF;
}

/* WRITE YOUR CODE BELOW HERE */

/* font imports */

@font-face {
  font-family: 'fjallaoneregular';
  src: url('fonts/fjallaone-regular-webfont.woff2') format('woff2'),
       url('fonts/fjallaone-regular-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}

@font-face {
  font-family: 'libertinus_serifregular';
  src: url('fonts/libertinusserif-regular-webfont.woff2') format('woff2'),
       url('fonts/libertinusserif-regular-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}
/* typography stuff */

html {
  font-family: libertinus_serifregular, serif;
  font-size: 10px;
}

p, li {
  font-size: 1.5rem;
  line-height: 1.5;
  letter-spacing: 0.5px;
  word-spacing: 3px;
}

h1, h2 {
  font-family: fjallaoneregular, sans-serif;
  letter-spacing: 2px;
}

h1 {
  font-size: 5rem;
  text-align: center;
}

h2 {
  font-size: 3rem;
}

section h2 + p {
  text-indent: 20px;
}

/* Link styling */

a {
  outline: none;
}

a[href*="http"] {
  padding-right: 19px;
  background: url(external-link-52.png) no-repeat 100% 0;
  background-size: 16px 16px;
}

a:link, a:visited {
  color: #6F00FF;
}

a:focus, a:hover {
  text-decoration: none;
}

a:active {
  color: transparent;
  text-shadow: 0px 0px 1px #CC3311,
               0px 0px 2px #CC3311,
               0px 0px 3px black,
               0px 0px 4px black;
}

/* lists: extra margin top and bottom to make it
always have the same spacing as with paragraphs */

ul, ol {
  margin: 1.6rem 0;
}

ul {
  list-style-type: square;
}

ol {
  list-style-type: lower-latin;
}

/* nav menu */

nav ul {
  padding-left: 0;
  margin-top: 0.8rem;
}

nav li {
  list-style-type: none;
  margin-bottom: 2rem;
}

nav li a {
  text-decoration: none;
  display: inline-block;
  width: 100%;
  line-height: 3;
  text-align: center;
  font-size: 2.5rem;
  border: 1px solid #6F00FF;
}

nav li a:focus, nav li a:hover {
  color: white;
  background: #6F00FF;
}

nav li a:active {
  color: white;
  background: black;
}
```

## Détails

### Départ

Le début était donné, rien à signaler à part que j'ai changé la couleur de base pour `#6F00FF`
(l'indigo électrique y a que ça de vrai). Le faire avec une variable aurait été mieux, mais est un
peu hors-cadre pour ce cours.

```css
/* General setup */

* {
  box-sizing: border-box;
}

body {
  margin: 0 auto;
  min-width: 1000px;
  max-width: 1400px;
}

/* Layout */

section {
  float: left;
  width: 50%;
}

aside {
  float: left;
  width: 30%;
}

nav {
  float: left;
  width: 20%;
}

footer {
  clear: both;
}

header, section, aside, nav, footer {
  padding: 20px;
}

/* header and footer */

header, footer {
  border-top: 5px solid #6F00FF;
  border-bottom: 5px solid #6F00FF;
}
```

### Typographie

On commence par les polices : on a récupéré les polices [Libertinus Regular
Sans](https://www.fontsquirrel.com/fonts/libertinus) et
[Fjalla](https://www.fontsquirrel.com/fonts/fjalla) sur FontSquirrel. Les fontes web dans le dossier
[`fonts`](fonts) et le CSS ci-dessous viennent de [leur
générateur](https://www.fontsquirrel.com/tools/webfont-generator). On peut aussi utiliser [Google
web fonts](fonts.google.com) pour une solution sans téléchargement.

```css
/* WRITE YOUR CODE BELOW HERE */

/* font imports */

@font-face {
  font-family: 'fjallaoneregular';
  src: url('fonts/fjallaone-regular-webfont.woff2') format('woff2'),
       url('fonts/fjallaone-regular-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}

@font-face {
  font-family: 'libertinus_serifregular';
  src: url('fonts/libertinusserif-regular-webfont.woff2') format('woff2'),
       url('fonts/libertinusserif-regular-webfont.woff') format('woff');
  font-weight: normal;
  font-style: normal;

}
```

Ici on utilise simplement les fontes qu'on vient de définir, en réglant les tailles :

- Taille de base `10px` (standard)
- Texte de base en ×1.5
- Titres de niveau 1 en ×5, titres de niveau 2 en ×3
- Des espacements (`-spacing`) un peu plus larges

```css
/* typography stuff */

html {
  font-family: libertinus_serifregular, serif;
  font-size: 10px;
}

p, li {
  font-size: 1.5rem;
  line-height: 1.5;
  letter-spacing: 0.5px;
  word-spacing: 3px;
}

h1, h2 {
  font-family: fjallaoneregular, sans-serif;
  letter-spacing: 2px;
}

h1 {
  font-size: 5rem;
  text-align: center;
}

h2 {
  font-size: 3rem;
}
```

Le style pour le premier paragraphe après un titre de niveau 2 inclus dans une section : indentation
de `20px` :

```css
section h2 + p {
  text-indent: 20px;
}
```

### Les liens

On remet à zéro les éléments `<a>` en général.

```css
/* Link styling */

a {
  outline: none;
}
```

Pour les `<a>` qui sont effectivement des liens, on donne la couleur d'accent :

```css
a:link, a:visited {
  color: #6F00FF;
}
```

Et on retire le soulignement au survol et pour la sélection par tabulation :

```css
a:focus, a:hover {
  text-decoration: none;
}
```

Le sélecteur `active` est appliqué **pendant** un clic. On lui donne un style vraiment différent
avec une ombre complexe. On pouvait faire plus simple ici.

```css
a:active {
  color: transparent;
  text-shadow: 0px 0px 1px #CC3311,
               0px 0px 2px #CC3311,
               0px 0px 3px black,
               0px 0px 4px black;
}
```

Ici un sélecteur exotique : pour les liens externes (repérés par la valeur de leur attribut `href`),
on injecte une image :

```css
a[href*="http"] {
  padding-right: 19px;
  background: url(external-link-52.png) no-repeat 100% 0;
  background-size: 16px 16px;
}
```

### Listes

On change un peu les marges et le style des puces, rien de très exotique :

```css
/* lists: extra margin top and bottom to make it
always have the same spacing as with paragraphs */

ul, ol {
  margin: 1.6rem 0;
}

ul {
  list-style-type: square;
}
```

Un truc intéressant ici : on numérote avec des lettres plutôt qu'avec des chiffres.

```css
ol {
  list-style-type: lower-latin;
}
```

### Menu de navigation

Ici on a pas mal de choses, l'objectif est de simuler des boutons de navigation avec des blocs.

```css
/* nav menu */

nav ul {
  padding-left: 0;
  margin-top: 0.8rem;
}

nav li {
  list-style-type: none;
  margin-bottom: 2rem;
}

nav li a {
  text-decoration: none;
  display: inline-block;
  width: 100%;
  line-height: 3;
  text-align: center;
  font-size: 2.5rem;
  border: 1px solid #6F00FF;
}

nav li a:focus, nav li a:hover {
  color: white;
  background: #6F00FF;
}

nav li a:active {
  color: white;
  background: black;
}
```
