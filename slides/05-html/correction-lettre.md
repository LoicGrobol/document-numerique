---
title: "Décrire et manipuler un document numérique"
subtitle: "Correction Exercice lettre HTML"
author: Loïc Grobol
date: 2022-02-14
lang: fr-FR
output:
  pdf_document:
    latex_engine: "lualatex"
---

Correction Exercice lettre HTML
===============================

## Solution

Voici une solution complète, voir ci-dessous pour les commentaires détaillés

```html
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Dr. Eleanor Gaye">
    <title>Awesome science application correspondance</title>
    <style>
      body {
        max-width: 800px;
        margin: 0 auto;
      }

      .sender-column {
        text-align: right;
      }

      h1 {
        font-size: 1.5em;
      }

      h2 {
        font-size: 1.3em;
      }

      p,ul,ol,dl,address {
        font-size: 1.1em;
      }

      p, li, dd, dt, address {
        line-height: 1.5;
      }
    </style>
  </head>
  <body>
    <address class="sender-column">
      <strong>Dr. Eleanor Gaye</strong><br>
      Awesome Science faculty<br>
      University of Awesome<br>
      Bobtown, CA 99999,<br>
      USA<br>
      <strong>Tel</strong>: 123-456-7890<br>
      <strong>Email</strong>: no_reply@example.com
    </address>

    <p class="sender-column"><time datetime="2016-01-20">20 January 2016</time></p>

    <address>
      <strong>Miss Eileen Dover</strong><br>
      4321 Cliff Top Edge<br>
      Dover, CT9 XXX<br>
      UK
    </address>

    <h1>Re: Eileen Dover university application</h1>

    <p>Dear Eileen,</p>

    <p>Thank you for your recent application to join us at the University of Awesome's science faculty to study as part of your <abbr title="Doctor of Philosophy">PhD</abbr> next year. I will answer your questions one by one, in the following sections.</p>

    <h2>Starting dates</h2>

    <p>We are happy to accommodate you starting your study with us at any time, however it would suit us better if you could start at the beginning of a semester; the start dates for each one are as follows:</p>

    <ul>
      <li>First semester: <time datetime="2016-09-09">9 September 2016</time></li>
      <li>Second semester: <time datetime="2017-01-15">15 January 2017</time></li>
      <li>Third semester: <time datetime="2017-05-02">2 May 2017</time></li>
    </ul>

    <p>Please let me know if this is ok, and if so which start date you would prefer.</p>

    <p>You can find more information about <a href="http://www.example.com" title="table of awesome university important dates">important university dates</a> on our website.</p>

    <h2>Subjects of study</h2>

    <p>At the Awesome Science Faculty, we have a pretty open-minded research facility — as long as the subjects fall somewhere in the realm of science and technology. You seem like an intelligent, dedicated researcher, and just the kind of person we'd like to have on our team. Saying that, of the ideas you submitted we were most intrigued by are as follows, in order of priority:</p>

    <ol>
      <li>Turning H<sub>2</sub>O into wine, and the health benefits of Resveratrol (C<sub>14</sub>H<sub>12</sub>O<sub>3</sub>.)</li>
      <li>Measuring the effect on performance of funk bassplayers at temperatures exceeding 30°C (86°F), when the audience size exponentially increases (effect of 3 × 10<sup>3</sup> increasing to 3 × 10<sup>4</sup>.)</li>
      <li><abbr title="HyperText Markup Language">HTML</abbr> and <abbr title="Cascading Style Sheets">CSS</abbr> constructs for representing musical scores.</li>
    </ol>

    <p>So please can you provide more information on each of these subjects, including how long you'd expect the research to take, required staff and other resources, and anything else you think we'd need to know? Thanks.</p>

    <h2>Exotic dance moves</h2>

    <p>Yes, you are right! As part of my post-doctorate work, I <em>did</em> study exotic tribal dances. To answer your question, my favourite dances are as follows, with definitions:</p>

    <dl>
      <dt>Polynesian chicken dance</dt>
      <dd>A little known but <em>very</em> influential dance dating back as far as 300<abbr title="Before Christ">BC</abbr>, a whole village would dance around in a circle like chickens, to encourage their livestock to be "fruitful".</dd>
      <dt>Icelandic brownian shuffle</dt>
      <dd>Before the Icelanders developed fire as a means of getting warm, they used to practice this dance, which involved huddling close together in a circle on the floor, and shuffling their bodies around in imperceptibly tiny, very rapid movements. One of my fellow students used to say that he thought this dance inspired modern styles such as Twerking.</dd>
      <dt>Arctic robot dance</dt>
      <dd>An interesting example of historic misinformation, English explorers in the 1960s believed to have discovered a new dance style characterised by "robotic", stilted movements, being practiced by inhabitants of Northern Alaska and Canada. Later on however it was discovered that they were just moving like this because they were really cold.</dd>
    </dl>

    <p>For more of my research, see my <a href="http://www.example.com" title="Dr Gaye's exotic dance research">exotic dance research page</a>.</p>

    <p>Yours sincerely,</p>

    <p>Dr Eleanor Gaye</p>


    <p>University of Awesome motto: <q>Be awesome to each other.</q> -- <cite>The memoirs of Bill S Preston, <abbr title="Esquire">Esq</abbr></cite></p>
  </body>
</html>
```

## Détails

```html
<!DOCTYPE html>
```

[L'instruction `DOCTYPE`](https://developer.mozilla.org/fr/docs/Glossary/Doctype) est requise pour
tous les documents HTML bien formés, elle sert à expliciter au navigateur quel est le type du
document qui va suivre : attention, elle ressemble à une balise mais ce n'en est pas une, c'est une
**instruction**, dont on reparlera quand on traitera XML.

```html
<html lang="en-US">
```

Un document en HTML est toujours inclus dans un élément
[`<html>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/html) et préciser la langue via
l'attribut `lang` permet entre autre un meilleur support par les logiciels de lecture d'écran. La
sémantique exacte de `lang` est — comme toujours —, un peu compliqué, mais la norme [ISO
639](https://fr.wikipedia.org/wiki/ISO_639) est un bon point de départ pour saisir son
fonctionnement.

Notez que `lang` peut être utlisé pour d'autres éléments : utilisé pour `<html>` il précise la
langue principale du document, mais des documents multilingues peuvent par exemple l'utiliser pour
des `<section>` ou des `<p>`.

```html
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Dr. Eleanor Gaye">
    <title>Awesome science application correspondance</title>
```

Le début de l'en-tête, dans l'élément
[`<head>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/head) sert (comme presque
toujours) à préciser les métadonnées. Soit avec des éléments dédiés (comme
[`<title>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/title) ), soit via des attribut
donnés à des éléments [`<meta>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/meta) . En
particulier [`charset`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/meta#attr-charset),
s'il n'est pas
[techniquement](https://www.w3.org/International/questions/qa-html-encoding-declarations)
obligatoire, est fortement recommandé et il est recommandé de le faire apparaître dans les 512
premiers caractères de la page (pour faciliter le travail des navigateurs).

Le deuxième élément de métadonnées, qui précise ici l'auteurice de la lettre n'est pas obligatoire
en général, mais vous donne un exemple de comment préciser des métadonnées via leur clé (`name`) et
leur valeur (`content`).

```html
    <style>
      body {
        max-width: 800px;
        margin: 0 auto;
      }

      .sender-column {
        text-align: right;
      }

      h1 {
        font-size: 1.5em;
      }

      h2 {
        font-size: 1.3em;
      }

      p,ul,ol,dl,address {
        font-size: 1.1em;
      }

      p, li, dd, dt, address {
        line-height: 1.5;
      }
    </style>
  </head>
```

La deuxième partie de l'en-tête sert ici à injecter un ensemble de style, qui indiquent comment la
page doit s'afficher, ceci en donnant un fragment de code en langage `CSS` dans un élément
[`<style>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/style). Ce n'est pas forcément la
meilleure façon de lier du CSS à une page HTML.

```html
  <body>
```

Le reste du document, son contenu à proprement parler, son **corps**, est contenu dans l'élément [`<body>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/body).

```html
    <address class="sender-column">
      <strong>Dr. Eleanor Gaye</strong><br>
      Awesome Science faculty<br>
      University of Awesome<br>
      Bobtown, CA 99999,<br>
      USA<br>
      <strong>Tel</strong>: 123-456-7890<br>
      <strong>Email</strong>: no_reply@example.com
    </address>
```

Ceci est le block d'adresse, plusieurs choses à noter :

- Il est noté avec l'élément sémantique
  [`<address>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/address), qui est prévu pour
  ce type d'usages. Il n'y a jamais d'obligation d'utiliser ce type d'éléments, mais le faire autant
  que possible rend la vie plus facile.
- Les éléments importants sont notés avec
  [`<strong>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/strong), ce qui marque une
  mise en évidence de niveau maximal
  ([`<em>`](https://developer.mozilla.org/fr/docs/Web/HTML/Element/em) étant la version moins
  forte), qui se traduit visuelleemnt par défaut par du gras dans la plupart des navigateurs.
- Pour 

```html
    <p class="sender-column"><time datetime="2016-01-20">20 January 2016</time></p>

    <address>
      <strong>Miss Eileen Dover</strong><br>
      4321 Cliff Top Edge<br>
      Dover, CT9 XXX<br>
      UK
    </address>

    <h1>Re: Eileen Dover university application</h1>

    <p>Dear Eileen,</p>

    <p>Thank you for your recent application to join us at the University of Awesome's science faculty to study as part of your <abbr title="Doctor of Philosophy">PhD</abbr> next year. I will answer your questions one by one, in the following sections.</p>

    <h2>Starting dates</h2>

    <p>We are happy to accommodate you starting your study with us at any time, however it would suit us better if you could start at the beginning of a semester; the start dates for each one are as follows:</p>

    <ul>
      <li>First semester: <time datetime="2016-09-09">9 September 2016</time></li>
      <li>Second semester: <time datetime="2017-01-15">15 January 2017</time></li>
      <li>Third semester: <time datetime="2017-05-02">2 May 2017</time></li>
    </ul>

    <p>Please let me know if this is ok, and if so which start date you would prefer.</p>

    <p>You can find more information about <a href="http://www.example.com" title="table of awesome university important dates">important university dates</a> on our website.</p>

    <h2>Subjects of study</h2>

    <p>At the Awesome Science Faculty, we have a pretty open-minded research facility — as long as the subjects fall somewhere in the realm of science and technology. You seem like an intelligent, dedicated researcher, and just the kind of person we'd like to have on our team. Saying that, of the ideas you submitted we were most intrigued by are as follows, in order of priority:</p>

    <ol>
      <li>Turning H<sub>2</sub>O into wine, and the health benefits of Resveratrol (C<sub>14</sub>H<sub>12</sub>O<sub>3</sub>.)</li>
      <li>Measuring the effect on performance of funk bassplayers at temperatures exceeding 30°C (86°F), when the audience size exponentially increases (effect of 3 × 10<sup>3</sup> increasing to 3 × 10<sup>4</sup>.)</li>
      <li><abbr title="HyperText Markup Language">HTML</abbr> and <abbr title="Cascading Style Sheets">CSS</abbr> constructs for representing musical scores.</li>
    </ol>

    <p>So please can you provide more information on each of these subjects, including how long you'd expect the research to take, required staff and other resources, and anything else you think we'd need to know? Thanks.</p>

    <h2>Exotic dance moves</h2>

    <p>Yes, you are right! As part of my post-doctorate work, I <em>did</em> study exotic tribal dances. To answer your question, my favourite dances are as follows, with definitions:</p>

    <dl>
      <dt>Polynesian chicken dance</dt>
      <dd>A little known but <em>very</em> influential dance dating back as far as 300<abbr title="Before Christ">BC</abbr>, a whole village would dance around in a circle like chickens, to encourage their livestock to be "fruitful".</dd>
      <dt>Icelandic brownian shuffle</dt>
      <dd>Before the Icelanders developed fire as a means of getting warm, they used to practice this dance, which involved huddling close together in a circle on the floor, and shuffling their bodies around in imperceptibly tiny, very rapid movements. One of my fellow students used to say that he thought this dance inspired modern styles such as Twerking.</dd>
      <dt>Arctic robot dance</dt>
      <dd>An interesting example of historic misinformation, English explorers in the 1960s believed to have discovered a new dance style characterised by "robotic", stilted movements, being practiced by inhabitants of Northern Alaska and Canada. Later on however it was discovered that they were just moving like this because they were really cold.</dd>
    </dl>

    <p>For more of my research, see my <a href="http://www.example.com" title="Dr Gaye's exotic dance research">exotic dance research page</a>.</p>

    <p>Yours sincerely,</p>

    <p>Dr Eleanor Gaye</p>


    <p>University of Awesome motto: <q>Be awesome to each other.</q> -- <cite>The memoirs of Bill S Preston, <abbr title="Esquire">Esq</abbr></cite></p>
  </body>
</html>
``````html
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Dr. Eleanor Gaye">
    <title>Awesome science application correspondance</title>
    <style>
      body {
        max-width: 800px;
        margin: 0 auto;
      }

      .sender-column {
        text-align: right;
      }

      h1 {
        font-size: 1.5em;
      }

      h2 {
        font-size: 1.3em;
      }

      p,ul,ol,dl,address {
        font-size: 1.1em;
      }

      p, li, dd, dt, address {
        line-height: 1.5;
      }
    </style>
  </head>
  <body>
    <address class="sender-column">
      <strong>Dr. Eleanor Gaye</strong><br>
      Awesome Science faculty<br>
      University of Awesome<br>
      Bobtown, CA 99999,<br>
      USA<br>
      <strong>Tel</strong>: 123-456-7890<br>
      <strong>Email</strong>: no_reply@example.com
    </address>

    <p class="sender-column"><time datetime="2016-01-20">20 January 2016</time></p>

    <address>
      <strong>Miss Eileen Dover</strong><br>
      4321 Cliff Top Edge<br>
      Dover, CT9 XXX<br>
      UK
    </address>

    <h1>Re: Eileen Dover university application</h1>

    <p>Dear Eileen,</p>

    <p>Thank you for your recent application to join us at the University of Awesome's science faculty to study as part of your <abbr title="Doctor of Philosophy">PhD</abbr> next year. I will answer your questions one by one, in the following sections.</p>

    <h2>Starting dates</h2>

    <p>We are happy to accommodate you starting your study with us at any time, however it would suit us better if you could start at the beginning of a semester; the start dates for each one are as follows:</p>

    <ul>
      <li>First semester: <time datetime="2016-09-09">9 September 2016</time></li>
      <li>Second semester: <time datetime="2017-01-15">15 January 2017</time></li>
      <li>Third semester: <time datetime="2017-05-02">2 May 2017</time></li>
    </ul>

    <p>Please let me know if this is ok, and if so which start date you would prefer.</p>

    <p>You can find more information about <a href="http://www.example.com" title="table of awesome university important dates">important university dates</a> on our website.</p>

    <h2>Subjects of study</h2>

    <p>At the Awesome Science Faculty, we have a pretty open-minded research facility — as long as the subjects fall somewhere in the realm of science and technology. You seem like an intelligent, dedicated researcher, and just the kind of person we'd like to have on our team. Saying that, of the ideas you submitted we were most intrigued by are as follows, in order of priority:</p>

    <ol>
      <li>Turning H<sub>2</sub>O into wine, and the health benefits of Resveratrol (C<sub>14</sub>H<sub>12</sub>O<sub>3</sub>.)</li>
      <li>Measuring the effect on performance of funk bassplayers at temperatures exceeding 30°C (86°F), when the audience size exponentially increases (effect of 3 × 10<sup>3</sup> increasing to 3 × 10<sup>4</sup>.)</li>
      <li><abbr title="HyperText Markup Language">HTML</abbr> and <abbr title="Cascading Style Sheets">CSS</abbr> constructs for representing musical scores.</li>
    </ol>

    <p>So please can you provide more information on each of these subjects, including how long you'd expect the research to take, required staff and other resources, and anything else you think we'd need to know? Thanks.</p>

    <h2>Exotic dance moves</h2>

    <p>Yes, you are right! As part of my post-doctorate work, I <em>did</em> study exotic tribal dances. To answer your question, my favourite dances are as follows, with definitions:</p>

    <dl>
      <dt>Polynesian chicken dance</dt>
      <dd>A little known but <em>very</em> influential dance dating back as far as 300<abbr title="Before Christ">BC</abbr>, a whole village would dance around in a circle like chickens, to encourage their livestock to be "fruitful".</dd>
      <dt>Icelandic brownian shuffle</dt>
      <dd>Before the Icelanders developed fire as a means of getting warm, they used to practice this dance, which involved huddling close together in a circle on the floor, and shuffling their bodies around in imperceptibly tiny, very rapid movements. One of my fellow students used to say that he thought this dance inspired modern styles such as Twerking.</dd>
      <dt>Arctic robot dance</dt>
      <dd>An interesting example of historic misinformation, English explorers in the 1960s believed to have discovered a new dance style characterised by "robotic", stilted movements, being practiced by inhabitants of Northern Alaska and Canada. Later on however it was discovered that they were just moving like this because they were really cold.</dd>
    </dl>

    <p>For more of my research, see my <a href="http://www.example.com" title="Dr Gaye's exotic dance research">exotic dance research page</a>.</p>

    <p>Yours sincerely,</p>

    <p>Dr Eleanor Gaye</p>


    <p>University of Awesome motto: <q>Be awesome to each other.</q> -- <cite>The memoirs of Bill S Preston, <abbr title="Esquire">Esq</abbr></cite></p>
  </body>
</html>
```