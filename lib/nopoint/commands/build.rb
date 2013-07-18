module Nopoint
	module Commands
		class Build < Command
			require 'safe_yaml'
			require 'erb'

			def self.process(options)
				config = YAML.safe_load_file('config.yml')
				layout = File.read('layout/slide.erb')
				
				slides = []
				source = []

				config['chapters'].each do |chapter|
					source += File.read('slides/' + chapter).split(/\* ?\* ?\*/)
				end

				source.each_with_index do |slide, index|
					slides.push Nopoint::Slide.new(index, slide)
				end

				slides.each do |slide|
  				path = "public/slides/#{slide.id}.html"
  				file = File.new(path, 'w')
					
					max = slides.count - 1
  				content = slide.content
					id = slide.id

					erb = ERB.new(layout)

					file.puts erb.result(binding)
					file.close
				end
			end
		end
	end
end
