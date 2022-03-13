---
title: "Décrire et manipuler un document numérique"
subtitle: "Exercice expressions régulières"
author: Loïc Grobol
date: 2022-02-07
lang: "fr"
output:
  pdf_document:
    latex_engine: "lualatex"
---

<!-- LTeX: language=fr -->

Exercices expressions régulières
================================

Consignes pour le rendu :

- Exercices individuels à rendre au plus tard le 14/02/2022 à 19h.
- Vos réponses sont à rendre en texte brut (txt ou Markdown) ou en PDF uniquement.
- Le nom de fichier doit être de la forme `<Prénom>_<Nom>-regex-4L4SC02P.<extension>`, par exemple
  si William Labov rend un fichier PDF, le nom du fichier sera `William_Labov-regex-4L4SC02P.pdf`.
  - Pour éviter les éventuels problèmes d'encodage ou de plateformes, merci d'utiliser une version
  de vos noms et prénoms en alphabet latin (toutes mes excuses)
- Dépôt sur [Cours en ligne](https://coursenligne.parisnanterre.fr/course/view.php?id=8022) (clé
  d'inscription `lovelace`)

*Répondre aux questions, en donnant le cas échéant les expressions régulières utilisées.*

## Père Duchesne

Dans le fichier [Père Duchesne](Duchn-utf8.txt) :

1. Combien de mots sont précédés par `*`, qu'est-ce que cela signifie d'après vous ?
2. Combien de mots commencent par `aristo` ?
3. Combien de mots de quatre lettres finissent par `t` ?
4. Combien de mots commencent par `t` et finissant par `ent` ?
5. Combien de mots sont des dérivés de `république` ?

## Expressions régulières en général

*Si plusieurs expressions régulières conviennent, répondre avec la plus courte que vous trouvez.*

1. Trouver une expression régulière qui ne capture que les mots qui commencent par `b` (majuscule ou
   minuscule) de la phrase `Le boa dans le baobab de Bob`.
2. Trouver une expression régulière qui ne capture que les noms (sans leur déterminant) dans
   l'exemple suivant : `L'action et la réaction et la réactivité`.
3. Pour l'expression régulière `^[^^]`
   1. Trouver une chaîne de caractères qui ne correspond pas à l'expression régulière
   2. Trouver une chaîne de caractères qui correspond à l'expression régulière
4. Pour l'expression régulière `^[^$]+$`/
   1. Trouver une chaîne de caractères qui ne correspond pas à l'expression régulière
   2. Trouver une chaîne de caractères qui correspond à l'expression régulière
5. Comment reconnaître une adresse électronique ? Ex : `prénom.nom@domaine.net` (on ne considèrera
   que les extensions de domaine `.com`, `.fr` et `.net`).
