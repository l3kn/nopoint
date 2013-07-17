module Nopoint
	module Commands
		class New < Command
			def self.process(args, options = {})
				raise ArgumentError.new('You must specify a name.') if args.emty?

				new_slide_path = File.expand_path(args.join(' '), Dir.pwd)
				FileUtils.mkdir_p new_slide_path

				create_sample_files new_slide_path
			end

			private

			def self.create_sample_files(path)
				FileUtils.cp_r(slide_template + '/.', path)
			end

			def self.site_template
				File.expand_path('../../site_template'), File.dirname(__FILE__))
			end
		end
	end
end
