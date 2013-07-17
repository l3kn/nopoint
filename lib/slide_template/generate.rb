require 'kramdown'
require 'liquid'
require 'yaml'

$out_dir = '_slides'

yaml = File.read('config.yml')
layout   = File.read('layout.html')

files = YAML.load(yaml)['slides']

slides = Array.new

notes = /\/\/ .*/

files.each do |file|
	markdown = File.read('_source/' + file)
	markdown.gsub!(notes,'')
	slides += markdown.split(/\* ?\* ?\*/)
end

slides.each_with_index do |slide, index|
	html = Kramdown::Document.new(slide).to_html
	path = "#{$out_dir}/slide#{index}.html" 
	file = File.new(path, 'w')
	path = "#{Dir.pwd}/#{$out_dir}/"
	output = Liquid::Template.parse(layout).render('content' =>  html, 
																								 'path' => path, 
																								 'num' => index, 
																								 'max' => slides.count - 1)
	file.puts output
	file.close
end
