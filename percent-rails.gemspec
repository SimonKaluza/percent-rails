# -*- encoding: utf-8 -*-
require File.expand_path('../lib/percent-rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = "percent-rails"
  s.version       = PercentRails::VERSION
  s.platform      = Gem::Platform::RUBY
  s.license       = "MIT"
  s.authors       = ["Simon Kaluza"]
  s.email         = [""]
  s.description   = "This library integrates a data field Percent abstraction for use with Rails data models"
  s.summary       = ""
  s.homepage      = ""

  s.files         =  Dir.glob("{lib,spec,config}/**/*")
  s.files         += %w(CHANGELOG.md LICENSE README.md)
  s.files         += %w(Rakefile percent-rails.gemspec)

  s.files.delete("spec/dummy/log")
  s.files.delete("spec/dummy/log/development.log")
  s.files.delete("spec/dummy/log/test.log")
  s.files.delete("spec/dummy/db/development.sqlite3")
  s.files.delete("spec/dummy/db/test.sqlite3")

  s.test_files    = s.files.grep(/^spec\//)

  s.require_path = "lib"

  s.add_dependency "activesupport", ">= 3.0"
  s.add_dependency "railties",      ">= 3.0"

  s.add_development_dependency "rails",       ">= 3.0"
  s.add_development_dependency "rspec-rails", "~> 2.10"
  s.add_development_dependency 'database_cleaner', ['>= 0.8.0']
end