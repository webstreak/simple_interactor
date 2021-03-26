# coding: utf-8
require File.expand_path( '../lib/simple_interactor', __FILE__ )

Gem::Specification.new do |spec|
  spec.name          = 'simple_interactor'
  spec.version       = SimpleInteractor::VERSION
  spec.authors       = ['Alexander Belyaev']
  spec.email         = ['alex@webstreak.com']

  spec.summary       = 'SimpleInteractor'
  spec.description   = 'A base class for your interactors'
  spec.homepage      = 'https://github.com/webstreak.com/simple_interactor'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 1.13'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.3'
end
