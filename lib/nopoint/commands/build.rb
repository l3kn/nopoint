module Nopoint
	module Commands
		class Build < Command
			require 'safe_yaml'
			require 'erb'

			def self.process(options)
        puts 'Let’s go!'
        self.build(options)
        self.watch(options) if options.watch
      end
      
      def self.build(options)
				config = YAML.safe_load_file('config.yml')
        template = config['template'] # Error handling

				chapters = []
				source = []
        destination = 'public'
        
				config['chapters'].each_with_index do |chapter, index|
          name = File.join(Dir.pwd, "slides/#{chapter}")
					chapters.push Nopoint::Chapter.new(index, name)
				end
        
        # Cleanup and rebuild the Public folder
        if File.directory? destination
          FileUtils.rm_rf(Dir.glob("#{destination}/*"))
        else
          FileUtils.mkdir(destination)
        end
        
        # Insert vendor template
        FileUtils.mkdir destination + '/assets'
        FileUtils.mkdir destination + '/slides'
        FileUtils.mkdir destination + '/images'
        
			  FileUtils.cp 'vendor/index.html', destination
        FileUtils.cp Dir.glob('vendor/*.js'), destination + '/assets'
        FileUtils.cp_r Dir.glob('images/*'), destination + '/images' if File.directory? 'images'
        FileUtils.cp Dir.glob("templates/#{template}/*.{css,js}"), destination + '/assets'
        
        # Build Stitic slides
        @slide_index = 0
        @slide_max = chapters.inject(0) {|sum, ch| sum + ch.slides.count}
        @chapter_max = chapters.count
        
        chapters.each_with_index do |chapter, index|
          @chapter_index = index
          
          if chapter.data.has_key? 'title'
          	@title = chapter.data['title']
          else
            @title = ''
          end
          
          chapter.slides.each do |slide|
  				  path = "public/slides/#{@slide_index}.html"
  				  file = File.new(path, 'w')
					   # slides.count - 1
  				  @content = slide.content
					  erb = ERB.new(File.read("templates/#{template}/slide.erb"))
            
					  file.puts erb.result(binding)
					  file.close
            
            @slide_index += 1
				  end
        end
      end
      
      def self.watch(options)
        require 'directory_watcher'

        source = File.join(Dir.pwd, 'slides/')

        glob = './{slides/*, templates/*, config.yml, images/*}'
        
        puts "watching #{source} for changes"
        
        dw = DirectoryWatcher.new(Dir.pwd, :glob => glob, :pre_load => true)
        dw.interval = 1

        dw.add_observer do |*args|
          t = Time.now.strftime("%Y-%m-%d %H:%M:%S")
          print "Regenerating: #{args.size} files at #{t}"
          self.build(options)
          puts  "...done."
        end

        dw.start

        unless options.serving
          trap("INT") do
            puts "     Halting auto-regeneration."
            exit 0
          end
          loop { sleep 1000 }
        end
      end
        
		end
	end
end
