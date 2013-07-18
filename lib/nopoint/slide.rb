module Nopoint
	class Slide
		require 'kramdown'

		attr_accessor :id, :content, :comments

		def initialize(id, source)
			@id = id
			notes = /\/\/ .*/
			@comments = source.match(notes)
			markdown = source.sub(notes, '')
			@content = Kramdown::Document.new(markdown).to_html
		end
	end
end
