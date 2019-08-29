# -*- encoding: utf-8 -*-
# stub: ruby_android 0.7.7 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby_android".freeze
  s.version = "0.7.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michal Tajchert".freeze, "Kamil Trzcinski".freeze, "SecureBrain".freeze]
  s.date = "2015-03-02"
  s.description = "static analysis tool for android apk".freeze
  s.email = "thetajchert@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "https://github.com/tajchert/ruby_apk".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.4".freeze
  s.summary = "static analysis tool for android apk".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubyzip>.freeze, [">= 1.1.6"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.11.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.3.0"])
      s.add_development_dependency(%q<jeweler>.freeze, ["~> 1.8.7"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<redcarpet>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rubyzip>.freeze, [">= 1.1.6"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.11.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.3.0"])
      s.add_dependency(%q<jeweler>.freeze, ["~> 1.8.7"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<redcarpet>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rubyzip>.freeze, [">= 1.1.6"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.11.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.3.0"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 1.8.7"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<redcarpet>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
