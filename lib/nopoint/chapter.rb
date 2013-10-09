module Nopoint
	class Chapter
		require 'kramdown'

		attr_accessor :id, :data, :slides

		def initialize(id, file)
			@id = id
      @slides = []
      source = File.read(file)      
      if source =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
         # remove the matched header
         source = $'
         self.data = YAML.safe_load($1)
      else
        self.data = Hash.new
      end
      
      source.split(/\* ?\* ?\*/).each do |slide|
        @slides << Nopoint::Slide.new(slide)
      end
		end
	end
end


