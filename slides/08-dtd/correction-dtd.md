---
title: "Décrire et manipuler un document numérique"
subtitle: "Exercices XML"
author: L. Grobol
lang: "fr"
output:
  pdf_document:
    latex_engine: "lualatex"
---

> Créer des documents XML qui permettront de structurer les informations suivantes :
>
> 1\. Bibliographie :
>
> - Notre-Dame de Paris (1831) – roman historique - Victor Hugo
> - Candide (1759) – conte philosophique – Voltaire
> - Andromaque (1667) – théâtre – Jean Racine
>
> 2\. Fruits
>
> - Bananes (Antilles françaises) – 500g – 1.69€
> - Mandarines (Espagne) – 750g – 3.49€
> - Kiwis (Italie) – 1kg – 2.49€
>
> 3\. Carnet d’adresses :
>
> - Thierry Petit – Médecin – 5 rue du Grand Docteur – 03 98 44 89 30
> - Anne LeBrun – Propriétaire – 18 avenue de la Résidence – 05 55 66 55 50
> - Kevin Dillot – Coursier – 6 rue de la Course – 07 32 23 70 22
>
> 4\. Programme TV :
>
> - TF1 – Mon poussin – Cinéma – 1h55min (21h05-23h)
> - France 2 – L’embarras du choix – Cinéma – 1h35min (21h05-22h40)
> - France 3 – Grantchester – Série TV – 50 min (21h05-21h55)

# Bibliographie

```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!DOCTYPE bibliography [
  <!ELEMENT bibliography (entry*)>
  <!ELEMENT entry (title, author+, publication+)>
  <!ATTLIST entry type CDATA #REQUIRED>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT author (firstname?, lastname?, nomDePlume?)>
  <!ELEMENT firstname (#PCDATA)>
  <!ELEMENT lastname (#PCDATA)>
  <!ELEMENT nomDePlume (#PCDATA)>
  <!ELEMENT publication EMPTY>
  <!ATTLIST publication date CDATA #REQUIRED>
]>
<bibliography>
    <entry type="roman historique">
        <title>Notre-Dame de Paris</title>
        <author>
            <firstname>Victor</firstname>
            <lastname>Hugo</lastname>
        </author>
        <publication date="1831" />
    </entry>
    <entry type="conte philosophique">
        <title>Candide</title>
        <author>
            <nomDePlume>Voltaire</nomDePlume>
        </author>
        <publication date="1759" />
    </entry>
    <entry type="théâtre">
        <title>Andromaque</title>
        <author>
            <firstname>Jean</firstname>
            <lastname>Racine</lastname>
        </author>
        <publication date="1667" />
    </entry>
</bibliography>
```

# Fruits

```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!DOCTYPE stock [
  <!ELEMENT stock (product*)>
  <!ELEMENT product (name, origin, qty, price)>
  <!ELEMENT name (#PCDATA)>
  <!ELEMENT origin (#PCDATA)>
  <!ELEMENT qty (#PCDATA)>
  <!ELEMENT price (#PCDATA)>
  <!ATTLIST price currency CDATA #REQUIRED>
]>
<stock>
    <product>
        <name>Bananes</name>
        <origin>Antilles françaises</origin>
        <qty>500g</qty>
        <price currency="€">1.69</price>
    </product>
    <product>
        <name>Mandarines</name>
        <origin>Espagne</origin>
        <qty>750g</qty>
        <price currency="€">3.49</price>
    </product>
    <product>
        <name>Kiwis</name>
        <origin>Italie</origin>
        <qty>1kg</qty>
        <price currency="€">2.49</price>
    </product>
</stock>
```

# Carnet d'addresse

```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!DOCTYPE contacts [
  <!ELEMENT contacts (person*)>
  <!ELEMENT person (firstName, lastName?, occupation?, address*, phone*)>
  <!ELEMENT firstName (#PCDATA)>
  <!ELEMENT lastName (#PCDATA)>
  <!ELEMENT occupation (#PCDATA)>
  <!ELEMENT address (n?, street, state?, country?)>
  <!ELEMENT n (#PCDATA)>
  <!ELEMENT street (#PCDATA)>
  <!ELEMENT state (#PCDATA)>
  <!ELEMENT country (#PCDATA)>
  <!ELEMENT phone (#PCDATA)>
]>
<contacts>
    <person>
        <firstName>Thierry</firstName>
        <lastName>Petit</lastName>
        <occupation>Médecin</occupation>
        <address>
            <n>5</n>
            <street>rue du Grand Docteur</street>
        </address>
        <phone>03 98 44 89 30</phone>
    </person>
    <person>
        <firstName>Anne</firstName>
        <lastName>LeBrun</lastName>
        <occupation>Propriétaire</occupation>
        <address>
            <n>18</n>
            <street>avenue de la Résidence</street>
        </address>
        <phone>05 55 66 55 50</phone>
    </person>
    <person>
        <firstName>Kevin</firstName>
        <lastName>Dillot</lastName>
        <occupation>Coursier</occupation>
        <address>
            <n>6</n>
            <street>rue de la Course</street>
        </address>
        <phone>07 32 23 70 22</phone>
    </person>
</contacts>
```

# Programme TV

```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!DOCTYPE guide [
  <!ELEMENT guide (program*)>
  <!ELEMENT program (title, genre, diffusion+)>
  <!ATTLIST program
    duration CDATA #REQUIRED
  >
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT genre (#PCDATA)>
  <!ELEMENT diffusion EMPTY>
  <!ATTLIST diffusion
    channel CDATA #REQUIRED
    start CDATA #REQUIRED
    end CDATA #REQUIRED
  >
]>
<guide>
    <program duration="1h55">
        <title>Mon poussin</title>
        <genre>Cinéma</genre>
        <diffusion channel="TF1" start="21h05" end="23h" />
    </program>
    <program duration="1h35">
        <title>L’embarras du choix</title>
        <genre>Cinéma</genre>
        <diffusion channel="France 2" start="21h05" end="22h40" />
    </program>
    <program duration="0h50">
        <title>Grantchester</title>
        <genre>Série TV</genre>
        <diffusion channel="France 3" start="21h05" end="21h55" />
    </program>
</guide>
```
