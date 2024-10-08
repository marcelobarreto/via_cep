# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'via_cep/version'

Gem::Specification.new do |spec|
  spec.name          = 'via_cep'
  spec.version       = ViaCep::VERSION
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6')
  spec.authors       = ['Marcelo Barreto (@marcelobarreto)']
  spec.email         = ['marcelobarretojunior@gmail.com']
  spec.summary       = 'Brazillian zip-code information'
  spec.homepage      = 'http://www.github.com/marcelobarreto/via_cep'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'bin'
  spec.executables   = ['zipcode']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 13.2.1'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rubocop', '~> 1.43.0'
  spec.add_development_dependency 'simplecov', '~> 0.22.0'
end
