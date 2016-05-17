# -*- encoding: utf-8 -*-
# stub: apcera-stager-api 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "apcera-stager-api"
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Josh Ellithorpe"]
  s.date = "2016-03-22"
  s.description = "Apcera Stager API Library"
  s.email = ["josh@apcera.com"]
  s.homepage = "http://apcera.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.1"
  s.summary = "Apcera Stager API library which makes it super easy to write stagers for the Apcera Platform."

  s.installed_by_version = "2.4.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.5"])
      s.add_development_dependency(%q<webmock>, ["= 1.11"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
    else
      s.add_dependency(%q<rest-client>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<rake>, ["~> 10.5"])
      s.add_dependency(%q<webmock>, ["= 1.11"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
    end
  else
    s.add_dependency(%q<rest-client>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<rake>, ["~> 10.5"])
    s.add_dependency(%q<webmock>, ["= 1.11"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
  end
end
