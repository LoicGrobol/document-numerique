---
title: "Décrire et manipuler un document numérique"
subtitle: "Exercices XML"
author: L. Grobol
lang: "fr"
output:
  pdf_document:
    latex_engine: "lualatex"
---

> Pour chacun des cinq fichiers XML suivants, dire s'il est bien formé et s'il ne l'est pas, dire
> pourquoi et proposer une correction.
>
> - Ce sont des fichiers textes tout à fait normaux, qui s'ouvrent dans n'importe quel éditeur de
>   texte (voir les cours précédents)
> - Les ouvrir avec un navigateur (voir cours Internet) devrait vous permettre de repérer les
>   documents mal formés, pour trouver les erreurs, il va falloir rechercher avec attention.
>
> Fichiers :
>
> - [exemple 1](samples/simple1.xml)
> - [exemple 2](samples/simple2.xml)
> - [exemple 3](samples/simple3.xml)
> - [exemple 4](samples/simple4.xml)
> - [exemple 5](samples/simple5.xml)

# Exemple 1

```xml
<?xml version="1.0" encoding="UTF-8"?>

<Contacts>
	<Person>
		<Firstname>John</Firstname>
		<Lastname>Smith</Lastname>
		<Position>CEO</Position>
	</Person>
	<Person>
		<Firstname>Tom</Firstname>
		<Lastname>Dunne</Lastname>
		<Company>Today FM</Company>
    		<Position/>
		<Email>tom.dunne@todayfm.com</Email>
	</Person>
</Contacts>
```

Il est bien formé, tout va bien.

# Exemple 2

```xml
<?xml version="1.0"? encoding="UTF-8">

<Contacts>
	<Person>
		<Firstname>John</Firstname>
		<Lastname>Smith</Lastname>
		<Birthday>1965/03/02</Birthday>
		<Company>IBM</Company>
		<Position>CEO</Position>
		<Email>jsmith@ibm.com<Email/>
		<Email>jsmith@yahoo.com</Email>
	</Person>
	<Person>
		<Firstname>Tom</Firstname>
		<Lastname>Dunne</Lastname>
		<Company>Today FM</Company>
    		<Position/>
		<Email>tom.dunne@todayfm.com</Email>
	</Person>
</Contacts>
```

- `?` en trop dans `<?xml …>`.
- Mauvaise balise fermante `<Email/>`.

# Exemple 3

```xml

<?xml version="1.0" encoding="UTF-8"?>

<Contacts>
	<Person>
		<Firstname>John</Firstname>
		<Lastname>Smith</Lastname>
		<Birthday>19650302</Birthday>
		<Company>IBM</Company>
		<Position>CEO</Position>
		<Email>jsmith@ibm.com</Email>
		<Email>jsmith@yahoo.com</Email>
		<Address type="home">
			<Company>
			<Street>23 Main St</Company>
			</Street>
			<City>Dublin</City>
			<Postcode>4</Postcode>
			<Country/>
		</Address>
		<Address type="work">
			<Street>1234 High St</Street>
			<City>Boston</City>
			<ZIP>1234</ZIP>
			<Country>Ireland</Country>
		</Address>
	</Person>
	<Person>
		<Firstname>Tom</Firstname>
		<Lastname>Dunne</Lastname>
		<Company>Today FM</Company>
    	<Position/>
		<Email>tom.dunne@todayfm.com</Email>
	</Person>
</Contacts>
```

- La ligne vide en début de fichier est de trop : il faut commencer par `<?xml …>`.
- Dans la première adresse `</Company>` et `</Street>` sont inversées.

# Exemple 4

```xml
<?xml version="1.0" encoding="UTF-8"?>

<-- Attention il y a des erreurs -->

<Contacts number=43>
	<Person>
		<Firstname>John</Firstname>
		<Lastname>Smith</Lastname>
		<Birthday>19650302</Birthday>
		<Company>IBM</Company>
		<Position>CEO</Position>
		<Email>jsmith@ibm.com</Email>
		<Email>jsmith@yahoo.com</Email>
		<Address type="home">
			<Company/>
			<Street>23 Main St</Street>
			<City>Dublin</City>
			<Postcode>4</Postcode>
			<Country/>
		</Address>
		<Address type="work">
			<Street>1234 High St</Street>
			<City>Boston</City>
			<ZIP>1234</ZIP>
			<Country>Ireland</Country>
		</Address>
	</Person>
	<Person>
		<Firstname>Tom</Firstname>
		<Lastname>Dunne</Lastname>
		<Company>Today FM</Company>
    	<Position/>
		<Email>tom.dunne@todayfm.com</Email>
	</Person>
</Contacts>
```

- Un commentaire doit commencer par `<!--` (il manque le `!`).
- L'attribut de `<Contacts>` n'a pas sa valeur entre quotes : `number="43"`.
