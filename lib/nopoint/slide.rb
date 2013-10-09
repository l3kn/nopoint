module Nopoint
	class Slide
		require 'kramdown'

		attr_accessor :content, :comment
    
		def initialize(source)
			notes = /\/\/ .*/
			@comments = source.match(notes)
			markdown = source.sub(notes, '')
			@content = Kramdown::Document.new(markdown).to_html
    end
	end
end
