---
title: Partiel 2026
layout: default
permalink: /2026/exam
---

<!-- LTeX: language=fr -->

# Partiel 2026

## ATTENTION

**SAUVEGARDEZ RÉGULIÈREMENT VOTRE TRAVAIL**

## Consignes

Ce partiel se présente comme une série de questions indépendantes. Vous devez y répondre dans un
fichier texte (`.txt`). Pour chaque question, commencez par une ligne ne comportant que le numéro de
question suivi d'un point : `3.` et laissez au minimum une ligne vide entre chaque question. Pour le
reste, vous êtes libres. Si vous ne pouvez pas, pour une raison ou une autre, travailler sur
machine, vous pouvez également rendre vos réponses sur papier.

À part si vous composez sur papier, votre rendu (au format `.txt`) est à déposer sur Cours en Ligne
ou, en cas de problème, à envoyer à `<lgrobol@parisnanterre.fr>`.

## Questions

1\. À l'aide de la table des caractères ASCII (voir annexe en fin de sujet), à quelle série de
nombres hexadécimaux correspond la chaîne de caractères « АМ PM » ?

2\. Par quel nombre hexadécimal est représenté le caractère « О » en UTF-8 ? Quel est l'équivalent
décimal (en base 10) ?

3.a Donner une expression régulière la plus courte possible qui trouverait dans un fichier texte
toutes les chaînes marquées ✅ ci-dessous et aucune des chaînes marquées ❌.

- ✅ `abc`
- ✅ `a`
- ✅ `bc`
- ✅ `aabc`
- ✅ `abcbc`
- ❌ `c`
- ❌ `b`
- ❌ `ac`
- ❌ `ab`

3.b Même question

- ✅ `abc`
- ✅ `bbc`
- ✅ `cbc`
- ✅ `ebc`
- ✅ `eebc`
- ✅ `eebca`
- ✅ `bc`
- ❌ `a`
- ❌ `eea`
- ❌ `dbc`
- ❌ `ac`

3.c Parmi les chaînes de caractères suivantes, lesquelles correspondent à l'expression régulière
`aa?([bc]+[ac])?` ?

1. `а`
1. `aa`
1. `aaa`
1. `aba`
1. `accc`
1. `abbb`
1. `aabca`
1. `aabac`

4\. Lister et expliquer les erreurs dans le fichier HTML suivant et proposer une correction

```text
<DOCTYPE html />
<head>
  <metа charset=“utf8”>
  <h1>Ma page test<⧸h2>
<\head>
<body>
  <title>Ma page test</title>
  ≺img src=“http://example.com/example.jpg' /≻
  <p>Ceci est une démonstrаtion de fichier HTML.
  <p>Elle inclut une imаge.
<body>
```

5\. Écrire en HTML un document avec un titre de niveau 1, deux titres de niveau 2 un paragraphe et
une. Donnez-leur le contenu de votre choix. Cliquer sur l'image doit envoyer sur l'URL
`https:⧸⧸example.com⧸target`

6\. Dans le fragment de code CSS ci-dessous, dire quel est le sélecteur et à quelle condition il
correspond, expliquer quel style sera appliqué aux éléments sélectionnés, puis donner une version où
l'arrière-plan n'est pas coloré, mais où l'élément est entouré d'une bordure bleue.

```text
span.highlight {
  font-size: normal;
  background: black;
}
```

7\. Créer un document XML qui encode la bibliographie suivante et inclut une DTD interne

- *Mirrored Heavens*, roman de Rebecca Roanhorse paru en anglais en 2024
- *Luck in the Shadows*, roman de Lynn Flewelling, paru en anglais en 1994
- *Gender Trouble*, essai de Judith Butler, paru en anglais en 1990
- *Manifest der Kommunistischen Partei*, pamphlet de Karl Marx et Friedrich Engels, paru en allemand
  en 1848

8\. Identifier les problèmes dans le document XML TEI suivant et proposer une correction

```text
<div type="chapter">
<P id=p1>
 This could be a TEI encoded<LB>
 single-paragraph chapter<LB>
 whose line breaks have been retained.
</div>
</P>
```

### 2026-04-19 : Partiel

- [Sujet](%7B%7Bsite.url%7D%7D%7B%7Bsite.baseurl%7D%7D/2026/exam)

## Annexe

|        | **⋅0** | **⋅1** | **⋅2** | **⋅3** | **⋅4** | **⋅5** | **⋅6** | **⋅7** | **⋅8** | **⋅9** | **⋅A** | **⋅B** | **⋅C** | **⋅D** | **⋅E** | **⋅F** |
| :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: |
| **0⋅** |  NUL   |  SOH   |  STX   |  ETX   |  EOT   |  ENQ   |  ACK   |  BEL   |   BS   |   HT   |   LF   |   VT   |   FF   |   CR   |   SO   |   SI   |
| **1⋅** |  DLE   |  DC1   |  DC2   |  DC3   |  DC4   |  NAK   |  SYN   |  ETB   |  CAN   |   EM   |  SUB   |  ESC   |   FS   |   GS   |   RS   |   US   |
| **2⋅** |   SP   |   !    |   "    |   #    |   \$   |   %    |   &    |   '    |   (    |   )    |   \*   |   +    |   ,    |   -    |   .    |   /    |
| **3⋅** |   0    |   1    |   2    |   3    |   4    |   5    |   6    |   7    |   8    |   9    |   :    |   ;    |   \<   |   =    |   >    |   ?    |
| **4⋅** |   @    |   A    |   B    |   C    |   D    |   E    |   F    |   G    |   H    |   I    |   J    |   K    |   L    |   M    |   N    |   O    |
| **5⋅** |   P    |   Q    |   R    |   S    |   T    |   U    |   V    |   W    |   X    |   Y    |   Z    |   \[   |   \\   |   \]   |   ^    |   \_   |
| **6⋅** |   \`   |   a    |   b    |   c    |   d    |   e    |   f    |   g    |   h    |   i    |   j    |   k    |   l    |   m    |   n    |   o    |
| **7⋅** |   p    |   q    |   r    |   s    |   t    |   u    |   v    |   w    |   x    |   y    |   z    |   {    |   \|   |   }    |   ~    |  DEL   |

Code ASCII: Le premier chiffre (hexadécimal) est donné en ligne et le deuxième en colonne. Par
exemple, le caractère « A » correspond au nombre hexadécimal 41 : ligne 4⋅, colonne ⋅1.
