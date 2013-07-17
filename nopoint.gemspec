# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nopoint/version'

Gem::Specification.new do |spec|
  spec.name          = 'nopoint'
  spec.version       = Nopoint::VERSION
  spec.authors       = ['Leon Shure']
  spec.email         = ['hello@l3kn.de']
  spec.description   = 'Write a gem description'
  spec.summary       = 'Write a gem summary'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

	spec.add_runtime_dependency('liquid')
	spec.add_runtime_dependency('kramdown')
	spec.add_runtime_dependency('commander')

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
