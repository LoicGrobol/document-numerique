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

# 1. Modélisation

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

# 2. Création de DTD

Pour chacun des documents de la question précédente, ajouter une DTD interne de telle sorte que vos
fichiers soient valides. Utilisez un validateur pour vous en assurer.