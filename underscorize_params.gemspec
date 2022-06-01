# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'underscorize_params/version'

Gem::Specification.new do |s|
  s.name        = 'underscorize_params'
  s.version     = UnderscorizeParams::VERSION
  s.date        = '2022-05-31'
  s.summary     = 'Underscorize params'
  s.description = 'Underscorize params'
  s.authors     = ['Mònade']
  s.email       = 'team@monade.io'
  s.files = Dir['lib/**/*']
  s.test_files = Dir['spec/**/*']
  s.required_ruby_version = '>= 2.7.0'
  s.homepage    = 'https://rubygems.org/gems/underscorize_params'
  s.license     = 'MIT'
  s.add_dependency 'actionpack', ['>= 5', '< 8']
  s.add_dependency 'activesupport', ['>= 5', '< 8']
  s.add_development_dependency 'rspec', '~> 3'
  s.add_development_dependency 'rubocop'
end