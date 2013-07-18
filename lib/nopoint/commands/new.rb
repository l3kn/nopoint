module Nopoint
	module Commands
		class New < Command
			def self.process(args, options = {})
				raise ArgumentError.new('You must specify a name.') if args.empty?

				new_slide_path = File.expand_path(args.join(' '), Dir.pwd)
				FileUtils.mkdir_p new_slide_path
				
				create_sample_files new_slide_path
			end

			private

			def self.create_sample_files(path)
				FileUtils.cp_r(template + '/.', path)
				new_dest_path = File.expand_path('public', Dir.pwd)
				FileUtils.mkdir_p(new_dest_path)
			end

			def self.template
				File.expand_path('../../slideshow_template', File.dirname(__FILE__))
			end
		end
	end
end
