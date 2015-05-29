# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spa_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "spa_rails"
  spec.version       = SpaRails::VERSION
  spec.authors       = ["Rodik"]
  spec.email         = ["i6@bk.ru"]

  spec.summary       = %q{Build system for single page application based on Sprockets}
  spec.description   = %q{Build system for single page application based on Sprockets}
  spec.homepage      = "https://github.com/Rezonans/spa_rails"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "slim", "~> 3.0.3"
  spec.add_dependency "sass-rails", "~> 5.0.3"
  spec.add_dependency "execjs", "~> 2.5.2"
  spec.add_dependency "uglifier", "~> 2.7.1"
  spec.add_dependency "ngannotate-rails", "~> 1.0.0"
  spec.add_dependency "sprockets-rails", "~> 2.3.1"
end
