# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'codat/version'

Gem::Specification.new do |spec|
  spec.name          = 'codat'
  spec.version       = Codat::VERSION
  spec.authors       = ['Ricardo Otero']
  spec.email         = ['oterosantos@gmail.com']

  spec.summary       = 'Codat API wrapper in Ruby'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/rikas/codat'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 0.15'
  spec.add_dependency 'faraday_middleware', '~> 0.12'
  spec.add_dependency 'multi_json', '~> 1.13'
  spec.add_dependency 'rainbow', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'dotenv', '~> 2.5'
  spec.add_development_dependency 'pry-byebug', '~> 3.6'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.58'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.27'
  spec.add_development_dependency 'simplecov', '~> 0.16'
end
