# coding: utf-8

require File.expand_path(File.join(File.dirname(__FILE__),"files.rb"))

### Specification for the new Gem
Gem::Specification.new do |spec|

  spec.name          = "padrino-grape"
  spec.version       = File.open(File.join(File.dirname(__FILE__),"VERSION")).read.split("\n")[0].chomp.gsub(' ','')
  spec.authors       = ["Adam Luzsi"]
  spec.email         = ["adamluzsi@gmail.com"]
  spec.description   = %q{ compatibility module for padrino, to make grape mountable }
  spec.summary       = %q{ compatibility module for padrino, to make grape mountable }
  spec.homepage      = "https://github.com/adamluzsi/padrino-grape"
  spec.license       = "MIT"

  spec.files         = PadrinoGrape::SPEC
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency('rake') 
  spec.add_development_dependency('bundler') 

  spec.add_dependency('padrino')
  spec.add_dependency('grape', '>= 0.16.0')
end
