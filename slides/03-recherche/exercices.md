---
title: "Décrire et manipuler un document numérique"
subtitle: "Exercice expressions régulières"
author: L. Grobol
lang: "fr"
output:
  pdf_document:
    latex_engine: "lualatex"
---

<!-- LTeX: language=fr -->

Exercices expressions régulières
================================

Consignes pour le rendu :

- Vos réponses sont à rendre en texte brut (txt ou Markdown) ou en PDF **uniquement**.
- Le nom de fichier doit être de la forme `<Prénom>_<Nom>-regex-4L4SC02P.<extension>`, par exemple
  si William Labov rend un fichier PDF, le nom du fichier sera `William_Labov-regex-4L4SC02P.pdf`.
  - Pour éviter les éventuels problèmes d'encodage ou de plateformes, merci d'utiliser une version
  de vos noms et prénoms en alphabet latin (toutes mes excuses).
- Dépôt sur Cours en Ligne.

*Répondre aux questions, en donnant le cas échéant les expressions régulières utilisées.*

## CLG

Dans le fichier [Cours de linguistique générale](clg.txt) :

1. Combien de mots commencent par `ling` ?
2. Combien de mots de quatre lettres finissent par `t` ?
3. Combien de mots commencent par `t` et finissant par `ent` ?
4. Combien de mots sont des dérivés de `langue` ?

## Expressions régulières en général

*Si plusieurs expressions régulières conviennent, répondre avec la plus courte que vous trouvez.*

### Ensembles

Pour chacune des questions suivantes, écrire une expression régulière qui matche au moins une
sous-chaîne de chaque exemple positif, mais aucun des exemples négatifs.

1\.

**Positifs**

- pit
- spot
- spate
- slap two
- respite

**Négatifs**

- pt
- Pot
- peat
- part

2\.

**Positifs**

- rap them
- tapeth
- apth
- wrap/try
- sap tray
- 87ap9th
- apothecary

**Négatifs**

- aleht
- happy them
- tarpth
- Apt
- peth
- tarreth
- ddapdg
- apples

### Génération

Pour chacune des questions suivantes, écrire trois chaînes de caractères qui matchent l'expression
régulière proposée.

1. `^a(ab)*a$`
2. `^ab+c?`
3. `^a.[bc]+`
4. `^[a-z]+[\.\?!]$`
5. `^<[^>]+>$`

### Formats

1. Écrire une expression régulière qui matche toutes les heures au format `heures:minutes:secondes`,
mais uniquement celles qui peuvent exister (pas `55:31:122` par exemple).