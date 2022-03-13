---
title: "Décrire et manipuler un document numérique"
subtitle: "Correction : Exercice expressions régulières"
author: Loïc Grobol
date: 2022-02-21
lang: "fr"
output:
  pdf_document:
    latex_engine: "lualatex"
---

<!-- LTeX: language=fr -->

Correction : Exercices expressions régulières
============================================

Dans le fichier [Père Duchesne](Duchn-utf8.txt) :

> 1\. Combien de mots sont précédés par `*`, qu'est-ce que cela signifie d'après vous ?

3968

Expression régulière : `\*\b`

- Il faut bien despécialiser le `*`, sinon l'expression n'est pas bien formée
- Le `\b` traduit la consigne, même si dans ce fichier il ne change rien, puisque tous les
  astérisques sont devant un mot. Si vous trouvez des comptes différents avec et dans , c'est
  probablement que votre moteur de regex gère mal Unicode et ne considère pas les caractères
  accentués comme des lettres.
- Enfin, en regardant les résultats, il semble que ces astérisques servent à signaler des mots qui
  commençaient originellement en majuscules.

> 2\. Combien de mots commencent par `aristo` ?

162

Expression régulière : `\baristo`

> 3\. Combien de mots de quatre lettres finissent par `t` ?

3021

Expression régulière : `\b\w{3}t\b`

> 4\. Combien de mots commencent par `t` et finissant par `ent` ?

140

Expression régulière : `\bt\w*ent\b`

> 5\. Combien de mots sont des dérivés de `république` ?

501 avec l'expression régulière `\brépubli`, on aurait aussi pu utiliser `\brépubli(c|qu)`.

## Expressions régulières en général

*Si plusieurs expressions régulières conviennent, répondre avec la plus courte que vous trouvez.*

> 1\. Trouver une expression régulière qui ne capture que les mots qui commencent par `b` (majuscule
> ou minuscule) de la phrase `Le boa dans le baobab de Bob`.

`\b[bB]` pour trouver les mots. Si on veut que l'expression capture les mots entiers, on utilise
plutôt `\b[bB]\w*\b`.

> 2\. Trouver une expression régulière qui ne capture que les noms (sans leur déterminant) dans
> l'exemple suivant : `L'action et la réaction et la réactivité`.

`(ré)?ac` convient, `(ré)?ac\w*\b` pour capturer les mots entiers. On peut aussi utiliser
`\b(r|a)`/`\b(r|a)\w*\b`.

> 3\. Pour l'expression régulière `^[^^]` :
>
> 3.1 Trouver une chaîne de caractères qui ne correspond pas à l'expression régulière

`^abc` convient, comme n'importe quelle chaîne de caractères qui commence par le caractère `^`.

> 3.2 Trouver une chaîne de caractères qui correspond à l'expression régulière

`abc` convient, comme n'importe quelle chaîne de caractères qui ne commence pas par le caractère
`^`.

> 4\. Pour l'expression régulière `^[^$]+$` :
>
> 4.1 Trouver une chaîne de caractères qui ne correspond pas à l'expression régulière

`ab$c` convient, comme n'importe quelle chaîne de caractères qui contient le caractère `$`. Une chaîne vide ne correspondrait pas non-plus à cette expression régulière.

> 4.2 Trouver une chaîne de caractères qui correspond à l'expression régulière

`abc` convient, comme n'importe quelle chaîne de caractères non-vide qui ne contient pas le caractère `$`.

> 5\. Comment reconnaître une adresse électronique ? Ex : `prénom.nom@domaine.net` (on ne
> considèrera que les extensions de domaine `.com`, `.fr` et `.net`).

Une regex qui reconnaît exactement toutes les adresses mail, c'est possible mais [vraiment
compliqué](https://stackoverflow.com/a/201378). Si on s'en tient à une solution simple, on peut
penser à ceci :

`^(\w+\.)*\w+@(\w+\.)*\w+\.(com|fr|net)$`

Si on la décompose : la partie avant le `@` et celle après sont essentiellement constituées de
`(\w+\.)*\w+` : une séquence de zéro ou plus fragments constitués de caractères alphanumériques et
terminés par un point, suivis une séquence d'une lettre ou plus.

Le défaut principal de cette version, c'est qu'elle n'autorise pas les tirets et n'est donc pas
assez flexible. On peut aussi penser à :

`^(\S+\.)*\S+@(\S+\.)*\w+\.(com|fr|net)$`

qui autorise bien les tirets, mais laisse passer `-@$.com`. Une solution courante est

`^([A-z0-9_%+\-]+\.)*[A-z0-9_%+\-]+@([A-z0-9_%+\-]+\.)*[A-z0-9_%+\-]+\.(com|fr|net)$`

Où on donne explicitement les caractères autorisés : `[A-z0-9_%+\-]`, les alphanumériques ASCII et
les caractères `_%+-`. Ce n'est pas une mauvaise solution, même si c'est plus verbeux. On manque les
caractères Unicode non-ASCII, qui devraient en théorie pouvoir être utilisées au moins pour la
partie avant `@`, mais on peut régler ça ainsi si vraiment c'est important :

`^((\w|[_%+\-])+\.)*(\w|[_%+\-])+@((\w|[_%+\-])+\.)*(\w|[_%+\-])+\.(com|fr|net)$`
