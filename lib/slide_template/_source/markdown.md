# Markdown
{: .center}

* * *

# Das Problem
{: .title}

## Texte schreiben

* universel einsetzbar _(Websites, PDFs, Präsentationen)_
* softwareunabhängig _(fremde Rechner, ssh )_
* möglichst schnell und einfach
	* keine Mausbedienung
	* wenig (Syntax)zeichen

* * *

# html
{: .title}

~~~ html
<h1>Was ist doof an html</h1>
<ul>
 <li>Foo
  <ul>
   <li>Bar</li>
   <li>Baz</li>
  </ul>
 </li>
</ul>
<a href="www.example.com">Links auch</a>
<img src="www.example.com/image" alt="Bilder" />
~~~

* * *

# Die Lösung
{: .title}

## Eine Auszeichnungssprache für Texte

* Reduzierung auf die wichtigsten Elemente
* Einfache Syntax

* * *

~~~ markdown
# Markdown

* We
  * need
  * to
  * go
    * deeper!

[Oh, ein Link](www.example.com)
![Oh, ein Bild](www.example.com/image)
~~~

* * *

# Die Syntax
{: .center}

* * *

# Basics
{: .title}

{::options parse_block_html="true" /}

<div class="half">

~~~ text
normal  
_kursiv_ oder *kursiv*
__fett__  oder **fett**
*__beides__*
~~~

</div>

<div class="half">

normal  
_kursiv_  
__fett__  
*__beides__*  

</div>

* * *

# Überschriften
{: .title}

{::options parse_block_html="true" /}

<div class="half">

~~~ text
# Überschrift 1
## Überschrift 2
### Überschrift 3
#### Überschrift 4
~~~

</div>

<div class="half">

# Überschrift 1

## Überschrift 2

### Überschrift 3

#### Überschrift 4

</div>

* * * 
                                                              
# Listen
{: .title}
                                                              
{::options parse_block_html="true" /}

<div class="half">                                            
                                                              
~~~ text
* foo
* bar
  * baz

1. eins
3. zwei
3. drei
7. vier
~~~

</div>

<div class="half">
* foo
* bar
  * baz

1. eins
3. zwei
3. drei
7. vier
</div>                                                        

* * *

# Bilder und Links
{: .title}

{::options parse_block_html="true" /}

<div class="half">

~~~ text
[Oh, ein Link](www.example.com)  
![Hodor](http://www.shared.l3kn.de/images/codetruck.png)

Text mit einem [Link] der öfter vorkommt [Link]
[Link]: http://hodor.de
~~~                                                           
                                                              
</div>                                                        
                                                              
<div class="half">                                            
[Oh, ein Link](www.example.com)  
![Hodor](http://www.shared.l3kn.de/images/codetruck.png)

Text mit einem [Link] der öfter vorkommt [Link]

[Link]: http://hodor.de
</div>
                                                        
* * *  

# Kramdown
{: .title}

## Erweiterung von Markdown

* Fußnoten
* Syntax Highlighting
* CSS-Klassen

* * *

# Syntax Highlighting und CSS
{: .title}

{::options parse_block_html="true" /}

<div class="half">

~~~ text
 ~~~ ruby
 puts 'na'*10 + ' Batman'
 ~~~
{: .center}
~~~

</div>

<div class="half">
~~~ ruby
puts 'na'*10 + ' Batman'
~~~
</div>

* * *

# Tabellen
{: .title}

{::options parse_block_html="true" /}

<div class="half">

~~~ text
foo | bar
hodor| hodor
~~~

</div>

<div class="half">

foo | bar
hodor| hodor

</div>


