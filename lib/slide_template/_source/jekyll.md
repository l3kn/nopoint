# Webfoo
{: .center}

* * *

# Das Problem
{: .title}

## "Einfache" Websites erstellen

* Versionskontrolle
* abstrakt (MVC)
* möglichst schnell und einfach
	* keine Mausbedienung (ssh)
* wenig Redundanz
* geringe Anforderungen

* * *

# Direkt in html
{: .center}

* * *

# Vorteile
{: .title}

* Softwareunabhängig
* Keine Datenbank
* Höhere Sicherheit (Änderungen per git/ssh)

* * *

# Nachteile
{: .title}

* Redundanz (Mehrere Seite mit gleichem Layout)
* Komplizierte Syntax
* Anpassungen nur schwierig möglich

* * *

# CMS (Wordpress, Joomla, TYPO3)
{: .center}

* * *

# Vorteile
{: .title}

* Einfach zu nutzen
* WYSIWYG

* * *

# Nachteile
{: .title}

* bloated
* Datenbank
* potenzielle Sicherheitslücken

* * *

# Die Lösung
{: .title}

# Eine Vorstufe von _"Direkt in HTML"_

* Trennung von Layout und Inhalt
* Nutzung von Partials (Snippets)
* Einfachere Syntax für Texte

* * *

# Jekyll
{: .center}

* * *

# Dafuq?
{: .title}

## Static Site Generator 

* Generiert statische Seiten
* trennt Layout und Inhalt
* Ruby-Gem

* * *

# Installation
{: .title}

~~~ text
$ gem install jekyll
$ jekyll new myblog
$ cd myblog
myblog $ jekyll serve
# Now browse to http://localhost:4000
~~~

* * *

# Aufbau
{: .title}

~~~ text  
_config.yml
_includes
 |- footer.html
 \- header.html
_layouts
 |- default.html
 \- post.html
_posts
 |- 2007-10-29-Hodor.md
 \- 2009-04-26-HODOR.md
_site
index.html
~~~

* * *

# Aufbau
{: .title}

* _config.yml __Einstellungen__
* index.html __Layout der Startseite__
* _layouts __Speicherort für zusätzliche Layouts__
  * default.html __Grundgerüst der Seite__
  * post.html __Layout für einen einzelnen Beitrag__
* _posts __Speicherort für einzelne Posts__
  * YYYY-mm-dd-\<name>.markdown __Ein Post__
* _site __Ausgabeverzeichnis für die generierte Seite__

* * *
