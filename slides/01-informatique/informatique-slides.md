---
title: "Décrire et manipuler un document numérique"
subtitle: "Cours 1 : Informatique"
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

# Qu'est ce que l'informatique ?

Le mot « **informatique** » est inventé par Philippe Dreyfus en 1962 par contraction des mots
information et automatique.

- L’informatique serait doncle traitement automatique d'informations.
- *Automatique* au sens de *automate*, c'est-à-dire **machine**, pas de « se faire sans intervention
  humaine ».
- **Information** au sens large ou mathématique : il s'agit pas (ou pas seulement) des nouvelles.

---

Est-ce que c'est une très bonne définition ?

Pas vraiment.

# Une brève histoire

Qui sont ces gens:

- Joseph-Marie Jacquard
- Ada Lovelace et Charles Babbage
- Alan Turing
- Tommy Flowers
- Jean Bartik
- Grace Hopper
- Douglas Englebart
- Steve Wozniak

---

- [Joseph-Marie Jacquard](https://en.wikipedia.org/wiki/Joseph_Marie_Jacquard)
- [Ada Lovelace](https://en.wikipedia.org/wiki/Ada_Lovelace) et [Charles
  Babbage](https://en.wikipedia.org/wiki/Charles_Babbage)
- [Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing)
- [Tommy Flowers](https://en.wikipedia.org/wiki/Tommy_Flowers)
- [Jean Bartik](https://en.wikipedia.org/wiki/Jean_Bartik)
- [Grace Hopper](https://en.wikipedia.org/wiki/Grace_Hopper)
- [Douglas Englebart](https://en.wikipedia.org/wiki/Douglas_Engelbart)
- [Steve Wozniak](https://en.wikipedia.org/wiki/Steve_Wozniak)

## Antiquité

- Bouliers
- Astrolabes
- Machines mécaniques ([mécanisme
  d'Antikythera](https://en.wikipedia.org/wiki/Antikythera_mechanism))

## Machines à calculer mécaniques

- Règle à calcul (années 1620)
- Machines à calculer mécaniques de Schickard (1623), Pascal (1642), Thomas (1820)
- Fonctions plus générales, mais restent limités : il ne s'agit que de machines à calculs.

## Débuts du stockage et du traitemetn de l'information

- Métier Jacquard (1804) : cartes perforées pour représenter des motifs de tissage.
- Étendu au stockage d'instructions (orgue de barbarie).
- Puis d'information : cartes perforées d'Hollerith exploitables par des calculateurs
  électromécaniques (1880s).

## Appareils de traitements générique

- Milieu du 19ème siècle : machine a différence et machine analytique (non-concrétisée) de Babbage
  et Lovelace
  - Augusta Ada King née Byron, comtesse de Lovelace décrit le premier [programme
    informatique](https://en.wikipedia.org/wiki/File:Diagram_for_the_computation_of_Bernoulli_numbers.jpg)
- Tout au long du 19éme et du début du 20ème, plusieurs propositions d'ordinateurs analogiques

---

Premiers ordinateurs numériques :

- Théorisés par les mathématiciens Alan Turing, Kurt Gödel et John von Neumann
- Premières réalisations sous formes électromécaniques (relais) pendant la deuxième guerre mondiale.
- Premiers ordinateurs complètement électroniques (tubes à vide) pendant (Colossus) et peu après
  (ENIAC).
- ???
- Premiers ordinateurs personnels vraiment grand public en 1977 : Apple II, Commodore PET, TRS-80
