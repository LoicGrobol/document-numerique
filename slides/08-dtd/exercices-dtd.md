---
title: "Décrire et manipuler un document numérique"
subtitle: "Exercices DTD et modélisation"
author: Loïc Grobol
date: 2022-03-14
lang: "fr"
output:
  pdf_document:
    latex_engine: "lualatex"
---

# 1. Validation

(Tiré de <https://pageperso.lis-lab.fr/~pierre-alain.reynier/XML/tp1/tp1.html>)

Le document XML suivant n'est pas valide. Identifier les erreurs et proposer une correction.

```xml
<?xml version="1.0"  ?>

<!DOCTYPE biblio [
  <!ELEMENT person     ((name, (profession+)), img?)>
  <!ATTLIST person xmlns:xlink 
             CDATA #FIXED "http://www.w3.org/1999/xlink">
  <!ELEMENT biblio     (person?)>
  <!ELEMENT name       (first_name, last_name)>
  <!ELEMENT first_name (#PCDATA)>
  <!ELEMENT last_name  (#PCDATA)>
  <!ELEMENT profession (#PCDATA)>
  <!ATTLIST name SSN ID #REQUIRED>
  <!ATTLIST name ref ID #IMPLIED>
  <!ELEMENT friend EMPTY>
  <!ATTLIST friend img NMTOKEN #IMPLIED>
  <!ATTLIST friend ref IDREF #IMPLIED>
  <!ENTITY  start '<biblio>'>
  <!ENTITY  end   '</biblio>'>
 ]>

&start;
<person>
  <name ref="genie">
    <first_name>Alan</first_name>
    <last_name>Turing</last_name>
  </name>
  <profession>computer scientist</profession>
  <profession>mathematician</profession>
  <profession>cryptographer</profession>
  <friend ref="a_7256"></friend>
</person>

<person>
  <name SSN="17280313333">
    <last_name>Church</last_name>
    <first_name>Alonzo</first_name>
  </name>
  <profession>computer scientist</profession>
  <profession>logician</profession>
  <friend ref="b_8888" img="pas de photos"/>
</person>

<person>
  <name SSN="a_7256">
    <first_name>Lucien</first_name>
    <surname>Tintin</surname>
    <last_name>21 janvier 1991</last_name>
  </name>
  <friend ref="a_7256"> </friend>
</person>
&end;
```

# 2. Modélisation

Créer des documents XML qui permettront de structurer les informations suivantes :

1\. Bibliographie :

- Notre-Dame de Paris (1831) – roman historique - Victor Hugo
- Candide (1759) – conte philosophique – Voltaire
- Andromaque (1667) – théâtre – Jean Racine

2\. Fruits

- Bananes (Antilles françaises) – 500g – 1.69€
- Mandarines (Espagne) – 750g – 3.49€
- Kiwis (Italie) – 1kg – 2.49€

3\. Carnet d’adresses :

- Thierry Petit – Médecin – 5 rue du Grand Docteur – 03 98 44 89 30
- Anne LeBrun – Propriétaire – 18 avenue de la Résidence – 05 55 66 55 50
- Kevin Dillot – Coursier – 6 rue de la Course – 07 32 23 70 22

4\. Programme TV :

- TF1 – Mon poussin – Cinéma – 1h55min (21h05-23h)
- France 2 – L’embarras du choix – Cinéma – 1h35min (21h05-22h40)
- France 3 – Grantchester – Série TV – 50 min (21h05-21h55)

# 3. Création de DTD

Pour chacun des documents de la question précédente, ajouter une DTD interne de telle sorte que vos
fichiers soient valides. Utilisez un validateur pour vous en assurer.