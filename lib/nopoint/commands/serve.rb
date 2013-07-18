module Nopoint
	module Commands
		class Serve < Command
			def self.process(options = {})
				require 'webrick'

				root = File.expand_path('public', Dir.pwd)
				server = WEBrick::HTTPServer.new(
					:Port => 2337,
					:DocumentRoot => root
				)

				trap('INT') { server.shutdown }
				server.start
			end
		end
	end
end
