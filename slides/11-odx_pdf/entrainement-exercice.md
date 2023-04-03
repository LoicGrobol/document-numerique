---
title: "Décrire et manipuler un document numérique"
subtitle: "Entraînement pour le partiel" 
author: Loïc Grobol
date: 2023-04-03
lang: "fr"
output:
  odt_document: {}
  pdf_document:
    latex_engine: "lualatex"
---

# Sujet

*Toute tentative ou ébauche de réponse, même partielle, sera valorisé.*

1\. À l'aide de la table des caractères ASCII (voir annexe en fin de sujet), à quelle série de
nombres correspond la chaîne de caractères `4C48` ?

2\. Par quel nombre est représenté le caractère `A`  en UTF-8 ?

3\. Donner une expression régulière qui trouverait dans un texte tous les mots entre 6 et 10 lettres
commençant par un « a » et finissant par un « b ».

4\. Lister les éléments (« balises ») présents dans le fragment de code HTML suivant et expliquer la
fonction de chacun d'entre eux.

```html
<!DOCTYPE html> 
<html> 
  <head> 
    <meta charset="utf-8"> 
    <title>Ma page test</title> 
  </head> 
  <body>
    <a href="http://example.com">Pour aller quelque part</a>
  </body> 
</html>
```

5\. Écrire en HTML un document avec un titre de niveau 1, un paragraphe, une image et une
liste non-ordonnée. Donnez leur le contenu de votre choix.

6\. Dans le fragment de code CSS ci-dessous, dire quel est le sélecteur et à quelle condition il
correspond, et expliquer quel style sera appliqué aux éléments sélectionnés

```css
li a {
	color: blue;
	background: black;
}
```

7\. Créer un document XML qui encode la bibliographie suivante et inclut une DTD interne

- The Great Hunt, Robert Jordan, paru en 1992, 985 pages
- Hidden Warrior, Lynn Flewelling, paru en 2003, 400 pages
- Gender Trouble, Judith Butler, paru en 1990, 175 pages
- Manifest der Kommunistischen Partei, Karl Marx et Friedrich Engels, paru en 1848, 95 pages

8\. Identifier les problèmes dans le fragment de document XML TEI suivant et proposer une correction

```xml
<div type='chapter'>
<P xml:id=p1 xml:id=paragraphe>
</LB>This could be a TEI encoded<LB>
single-paragraph chapter<LB>
whose line breaks have been retained.
</p>
</DIV>
```

9\. Créer un document en HTML qui correspond au code Markdown ci-dessous

```md
# Apprendre à programmer

## Présentation

Un cours passionnant où on rencontre [le langage Python](http://python.org) avec lequel

1. On fait des tests
2. On fait des boucles
3. Et plein d'autres choses

## Liens utiles

Programme sur [la page du cours](https://loicgrobol.github.io/apprendre-programmer/)
```

# Annexe

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
