# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'era/version'

Gem::Specification.new do |spec|
  spec.name          = 'era'
  spec.version       = Era::VERSION
  spec.authors       = ['Shannon Skipper']
  spec.email         = ['shannonskipper@gmail.com']
  spec.description   = %q{Print the time a block takes but still return its value.}
  spec.summary       = %q{Evaluates a block and prints the time it took. Returns the block value. Takes an optional argument for number of times to run the block.}
  spec.homepage      = 'https://github.com/havenwood/era'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.4'
  spec.add_development_dependency 'rake'
end
