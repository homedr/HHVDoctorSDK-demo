# -*- encoding: utf-8 -*-
# stub: fir-cli 1.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "fir-cli".freeze
  s.version = "1.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["NaixSpirit".freeze, "atpking".freeze]
  s.date = "2019-05-16"
  s.description = "fir.im command tool, support iOS and Android".freeze
  s.email = ["atpking@gmail.com".freeze]
  s.executables = ["console".freeze, "fir".freeze, "setup".freeze]
  s.files = ["bin/console".freeze, "bin/fir".freeze, "bin/setup".freeze]
  s.homepage = "https://github.com/FIRHQ/fir-cli".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "\n        ______________        ________    ____\n       / ____/  _/ __ \\      / ____/ /   /  _/\n      / /_   / // /_/ /_____/ /   / /    / /\n     / __/ _/ // _, _/_____/ /___/ /____/ /\n    /_/   /___/_/ |_|      \\____/_____/___/\n\n  ## \u{66f4}\u{65b0}\u{8bb0}\u{5f55}\n  - (1.7.2) \u{4fee}\u{6b63}\u{4e86}\u{65e0}\u{8bba}\u{662f}\u{5426}\u{52a0}\u{53c2}\u{6570}\u{90fd}\u{56fa}\u{5b9a}\u{51fa}\u{73b0}\u{4e8c}\u{7ef4}\u{7801}\u{56fe}\u{7247}\u{7684}bug\n  - (1.7.1) \u{589e}\u{52a0}\u{4e86} \u{9489}\u{9489}\u{63a8}\u{9001} , \u{589e}\u{52a0}\u{4e86}\u{8fd4}\u{56de}\u{6307}\u{5b9a}\u{7248}\u{672c}\u{4e0b}\u{8f7d}\u{5730}\u{5740}\n  - (1.7.0) \u{8fc7}\u{671f}\u{4e86}ipa_build \u{529f}\u{80fd}, \u{589e}\u{52a0}\u{4e86}\u{5bf9} android manifest instant run \u{7684}\u{517c}\u{5bb9}\n  - (1.6.13) \u{4e0a}\u{4f20}\u{56fe}\u{6807}\u{903b}\u{8f91}\u{4fee}\u{6539}\n  - (1.6.12) \u{4fee}\u{590d}\u{4e86}\u{90e8}\u{5206}\u{673a}\u{5668}\u{6ca1}\u{6709}\u{9ed8}\u{8ba4}\u{5b89}\u{88c5} byebug \u{7684}\u{95ee}\u{9898}\n  - (1.6.11) \u{53d8}\u{5316}\u{4e86} ruby gem \u{4ed3}\u{5e93}\u{5730}\u{5740}\n  - [fir-cli](https://github.com/firhq/fir-cli) \u{5df2}\u{7ecf}\u{5f00}\u{6e90}\n  - \u{6b22}\u{8fce} fork, issue \u{548c} pull request\n  ".freeze
  s.rubygems_version = "3.0.4".freeze
  s.summary = "fir.im command tool".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.7"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.10"])
      s.add_runtime_dependency(%q<thor>.freeze, ["~> 0.19"])
      s.add_runtime_dependency(%q<rest-client>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<ruby_android>.freeze, ["~> 0.7.7"])
      s.add_runtime_dependency(%q<rqrcode>.freeze, ["~> 0.7"])
      s.add_runtime_dependency(%q<CFPropertyList>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<api_tools>.freeze, ["~> 0.1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.7"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
      s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
      s.add_dependency(%q<rest-client>.freeze, ["~> 2.0"])
      s.add_dependency(%q<ruby_android>.freeze, ["~> 0.7.7"])
      s.add_dependency(%q<rqrcode>.freeze, ["~> 0.7"])
      s.add_dependency(%q<CFPropertyList>.freeze, [">= 0"])
      s.add_dependency(%q<api_tools>.freeze, ["~> 0.1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.7"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.19"])
    s.add_dependency(%q<rest-client>.freeze, ["~> 2.0"])
    s.add_dependency(%q<ruby_android>.freeze, ["~> 0.7.7"])
    s.add_dependency(%q<rqrcode>.freeze, ["~> 0.7"])
    s.add_dependency(%q<CFPropertyList>.freeze, [">= 0"])
    s.add_dependency(%q<api_tools>.freeze, ["~> 0.1.0"])
  end
end
