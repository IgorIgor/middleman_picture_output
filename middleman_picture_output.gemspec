# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman/picture_output/version'

Gem::Specification.new do |spec|
  spec.name          = "picture_output"
  spec.version       = Middleman::PictureOutput::VERSION
  spec.authors       = ["Igor Kupreev"]
  spec.email         = ["ikupreev@stone-labs.com"]

  spec.summary       = %q{helpers for place pictures on the page}
  spec.description   = %q{gem provide helpers to manage pictures for your site and fast placing them to page}
  spec.homepage      = "http://expample.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     'middleman-core', ['~> 3.3']

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
