# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_interactor/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_interactor'
  spec.version       = SimpleInteractor::VERSION
  spec.authors       = ['Alexander Belyaev']
  spec.email         = ['alexbel@hush.com']

  spec.summary       = 'SimpleInteractor'
  spec.description   = 'A base class for your interactors'
  spec.homepage      = 'https://github.com/webstreak.com/simple_interactor'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
end
