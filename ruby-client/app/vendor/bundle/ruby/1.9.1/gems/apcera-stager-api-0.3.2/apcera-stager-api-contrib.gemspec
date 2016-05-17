# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.add_dependency "rest-client"
  gem.add_dependency 'json'

  gem.authors       = ["Josh Ellithorpe"]
  gem.email         = ["josh@apcera.com"]
  gem.description   = %q{Apcera Stager API Library}
  gem.summary       = %q{Apcera Stager API library which makes it super easy to write stagers for the Apcera Platform.}
  gem.homepage      = "http://apcera.com"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.name          = "apcera-stager-api"
  gem.require_paths = ["lib"]
  gem.version       = "0.3.2"

  gem.add_development_dependency 'rspec', '~> 2.6.0'
  gem.add_development_dependency 'rake', '~> 10.5'
  gem.add_development_dependency 'webmock', '1.11'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'vcr'
end
