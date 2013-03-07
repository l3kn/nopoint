# nopoint, a meta-presentation

> “There is absolutely no point in using this tool” (Leon Rische)

## Usage

Move between slides the with the `<-` and `->` keys.  
Toggle fullscreen with the `up-arrow` key.  
Jump back to slide 1 with the `down arrow` key.  
* * *

# Le fuq is this?

With nopoint you can write your slides in [Markdown](http://daringfireball.net/projects/markdown/) and present them without any additional software but your webbrowser

## Files

nopoint consists of only 4 files:

* `slide.md`  
**insert markdown here**, use horizontal rules (\* \* \*) to separate two slides.

* `index.html`  
A few lines of  where the slides are rendered in and some javascript switching the slides.

* `style.css`
Some basic styling, feel free to make your own!

* `Markdown.Converter.js`  
Javascript markdown converter, see [PageDown](https://code.google.com/p/pagedown/) for more infos.

* * *

# Why should I even care?

> “If you can't explain it simply, you don't understand it well enough” (Albert Einstein)

If you want crappy Wordarts and fancy transitions, there is no point in using this software!  
`else {next slide maybe?}`
* * *

## Simplicity

* Write your slides in markdown  
* Upload the files to your webserver or run your own locally  
(to do this you could run `python -m SimpleHTTPServer 8000` inside the nopoint folder, then browse to *localhost:8000*)

## Platform independence 

* You can present your slides from nearly any device  
*(unless it is a toaster or running Internet Explorer)*

* And from nearly everywhere  
*(where you can access your webserver)*

## Reusability

All your content is markdown,

* Print it (horizontal rules indicating slides)

* Blog it (Jekyll, Hyde, ...)

* Fork it (from [here](https://github.com/l3kn/nopoint))

* * *

# Thats it!

by Leon Rische    
[website](http://l3kn.de) [twitter](https://twitter.com/l3kn) [flattr](https://flattr.com/profile/l3kn)

