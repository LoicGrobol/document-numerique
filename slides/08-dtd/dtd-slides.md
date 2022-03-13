---
title: "Décrire et manipuler un document numérique"
subtitle: "Cours 8: DTD et modélisation"
author:
  - "Loïc Grobol `<lgrobol@parisnanterre.fr>`"
institute: Université Paris Nanterre
date: 2022-03-14
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

# Document bien formé

On a vu que XML était à la fois plus souple et plus strict que HTML

- Plus souple : on peut définir les types d'éléments et d'attributs qu'on veut.
- Plus strict : la syntaxe est moins permissive.
  - Ou plutôt : les interpréteurs n'essaient pas de deviner en cas d'erreur de syntaxe.

---

Les règles de syntaxe qu'on a vu dans le cours précédent définissent le fait d'être **bien formé** :

- Le document commence par une déclaration XML.
- Le document a un unique élément racine.
- Les éléments et attributs ont des noms autorisés.
- Les éléments ont une balise de fermeture ou sont autofermants.
- Les éléments sont positionnés correctement (pas d'imbrication sans inclusion).
- Les valeurs d'attribut XML sont entre simple `'` ou double `"` quotes.
- Les entités sont utilisées pour les caractères spéciaux.

---

Pour avoir une définition complète, mais très, très formelle : voir [la
spécification](https://www.w3.org/TR/REC-xml/).

# Document valide

Même si un document XML est bien formé, ça ne signifie pas qu'il soit approprié pour une
application.

Imaginez par exemple qu'un système de bibliographie soit prévu pour des données de la forme
suivante :

```xml
<?xml version="1.0" encoding="UTF-8"?>
<bibliography>
<entry type="journalArticle">
  <title>The Misgendering Machines: Trans/HCI Implications of Automatic Gender Recognition</title>
</entry>
<entry type="book">
  <title>Introduction aux études sur le genre</title>
</entry>
</bibliography>
```

---

Si on lui donne l'entrée suivante, qu'en faire ?

```xml
<?xml version="1.0" encoding="UTF-8"?>
<bibliography>
<book>
  <title>Gender Trouble: Feminism and the Subversion of Identity</title>
</book>
</bibliography>
```

Le document est bien formé, mais il ne correspond pas aux attentes : il n'est pas **valide**

(Le terme n'est pas très heureux)

---

On dit qu'un document est valide s'il est conforme à une spécification qui décrit

- Les types d'éléments autorisés.
- Les attributs autorisés pour chaque type d'élément.
- Les usages autorisés pour les éléments, et notamment les structures.

---

Il existe plusieurs standard pour décrire une telle spécification : DTD, XML Schemas, RelaxNG,
Schematron…

Ces langages modélisent des règles de validité plus
ou moins précises et d’une manière plus ou moins lisible.

---

**Valider** un fichier XML, c'est le comparer à cette spécification à l'aide d'un outil qui indique

- Soit le document est valide, conforme aux règles,
- Soit il contient des erreurs comme : tel attribut de tel élément contient une valeur interdite par
  telle contrainte, il manque tel sous-élément ou attribut dans tel élément…

Dans ce cours, on se limitera aux DTD, plus anciennes et plus simples.

# DTD

Une *Document Type Definitions* est une liste de règles définies au début d’un document XML pour
permettre sa validation pendant sa lecture. Elle est déclarée par un élément spécial `DOCTYPE` juste
après le prologue et avant la racine :

```xml
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE itineraire ... >
<itineraire nom="essai">
<etape distance="0km">départ</etape>
<etape distance="1km">tourner à droite</etape>
</itineraire>
```

Attention : la syntaxe n'est pas la même que celle du contenu du XML

## DTD interne ou externe

Une DTD peut être

- **Interne**, intégrée au document, entre `[ ]` :

  ```xml
  <!DOCTYPE itineraire [
  ...
  ]>
  ```

- **Externe**, dans un autre fichier, signalé par `SYSTEM` suivi de l’URL du fichier :

   ```xml
   <!DOCTYPE itineraire SYSTEM "itineraire.dtd">
   ```

---

- **Mixte**, il y a à la fois un fichier et des définitions locales :

   ```xml
   <!DOCTYPE itineraire SYSTEM "itineraire.dtd" [
   ...
   ]>
  ```

Une DTD externe peut être utilisée pour plusieurs fichiers XML, c'est donc ce qu'on utilise pour la
plupart des applications.

## Fichiers *standalone*

Vous trouverez parfois un attribut `standalone` valant `"yes"` ou `"no"`
dans les prologues XML. Il est optionnel et présent uniquement
quand il y a une DTD interne.

```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
```

Par défaut il vaut `"no"`, donc on ne le met que lorsqu’il vaut `"yes"`.

- `"no"` : la DTD interne fournit les valeurs par défaut et les entités et il peut y avoir des
  définitions externes (`SYSTEM`).
- `"yes`" : la DTD interne ne sert que pour la validation et ne peut pas employer d’entités ou de
  règles externes. Le document XML et avec sa DTD interne est totalement indépendant.

## Validateurs

De nombreux outils de validation existent, souvent associés à des éditeurs XML. Dans le cadre de ce
cours, on peut se contenter d'un validateur simple comme <https://www.truugo.com/xml_validator>.

# Exos
exos https://pageperso.lis-lab.fr/~pierre-alain.reynier/XML/ctp1/ctp1.html https://fabien-torre.fr/Enseignement/tp/XML/Modelisation/
