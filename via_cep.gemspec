# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'via_cep/version'

Gem::Specification.new do |s|
  s.name          = 'via_cep'
  s.version       = ViaCep::VERSION
  s.authors       = ['Marcelo Barreto (@marcelobarreto)']
  s.email         = ['marcelobarretojunior@gmail.com']
  s.summary       = 'Brazillian zip-code information'
  s.homepage      = 'http://www.github.com/marcelobarreto/via_cep'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.bindir        = 'bin'
  s.executables   = ['zipcode']
  s.require_paths = ['lib']

  s.add_dependency 'activesupport', '>= 5', '< 7'
end
