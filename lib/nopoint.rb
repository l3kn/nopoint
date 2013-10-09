# helper
def require_all(path)
	glob = File.join(File.dirname(__FILE__), path, '*.rb')
	Dir[glob].each do |file|
		require file
	end
end

# stdlib
require 'fileutils'

# 3rd party
require 'kramdown'
require 'coderay'

# internal
require 'nopoint/command'
require 'nopoint/chapter'
require 'nopoint/slide'
require 'nopoint/version'

require_all 'nopoint/commands'

module Nopoint
end
