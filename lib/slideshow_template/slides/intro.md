// Intro

Nopoint
{: .large .center}

* * *

# Wait, what?
{: .title }

## This slideshow aims to be a simple guide to nopoint.
_(Of course is based on nopoint, sofuckingmeta)_

* * *

# Static slides?
{: .title }

There are many other web-based slideshow tools like _deck.js_ or _reveal.js_, but all of these are barely usable for people who disabled JavaScript in their browsers.

__Nopoint__ tries to solve this problem by converting every slide into a .html file.

* * *

# Static Slide Script (s3.js)
{: .title }

Nopoint ships with an optional JavaScript which enhances your slideshow experience in multiple ways:

__Protipp: press [↓]__

* Switch slides with [←] and [→]  
* Reveal list items one at a time with [↓] and [↑]

* * *

# Getting started
{: .title }

~~~ text
$ gem install nopoint  # install the nopoint-gem
$ nopoint new hello    # scaffold a new slideshow
$ cd hello/
$ nopoint build        # build it
$ nopoint serve        # serve the static slides on port 2337
~~~

* * *

# Files
{: .title }

A basic nopoint slideshow could like this

~~~ text
config.yml     # configure chapters of your slideshow
slides/        # place the markdown sources here
\- intro.md    # one chapter of the slideshow 
layout/        # erb layouts for the html slides
public/        # converted slides
\- index.html  # a redirection to the first slide
\- assets/     # js and css files go here
\- slides/     # generated html slides
   \-  0.html
~~~

* * *

# A noobs guide to [markdown](http://daringfireball.net/projects/markdown/)
{: .title }

~~~ text
_italic_
__bold__

# heading 1
## heading 2
...

* unordered
* list

1. ordered
2. list
~~~

* * *

# A noobs guide to [markdown](http://daringfireball.net/projects/markdown/)
{: .title }

~~~ text
[an url](www.example.com)
![an image](www.image.com)

> blockquote
`code`

*_*_* seperate single slides
(replace the _ with spaces)
~~~

* * *

# A noobs guide to [kramdown](http://kramdown.rubyforge.org)
{: .title }

~~~ text
	~~~ ruby
		puts 'syntax highlighting'
	~~~

 	{: .css_class }
~~~

Available css-classes are:  
_(remember the [↓]-key!)_

* __.center__ -> center the element above
* __.title__  -> mark element as a slides title
* __.large__  -> increase font size 

* * *

# Your first slide
{: .title }

~~~ text
$ vim slides/intro.md
~~~

and enter something like this

~~~ text

# My first nopoint
{: .center .large }

*_*_* (replace _ with spaces)

# A title
{: .title }

Hello world!

~~~

* * *

# One more thing!
{: .title }

## Follow me on [Twitter](http://twitter.com/l3kn) and [Github](http://github.com/l3kn)

[![Flattr](http://api.flattr.com/button/button-static-50x60.png)](https://flattr.com/submit/auto?user_id=l3kn&url=http://www.nopoint.l3kn.de&title=Nopoint)

