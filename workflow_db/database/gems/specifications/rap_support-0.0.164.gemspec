# -*- encoding: utf-8 -*-
# stub: rap_support 0.0.164 ruby . rap_support lib

Gem::Specification.new do |s|
  s.name = "rap_support"
  s.version = "0.0.164"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "http://gemserver.liveramp.net/" } if s.respond_to? :metadata=
  s.require_paths = [".", "rap_support", "lib"]
  s.authors = ["Liberty Young", "Daniel Spencer"]
  s.date = "2018-11-07"
  s.description = "RapSupport Description"
  s.email = ["liberty@liveramp.com"]
  s.rubygems_version = "2.5.1"
  s.summary = "RapSupport Summary"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<rapleaf_types>, [">= 0"])
      s.add_runtime_dependency(%q<backports>, [">= 0"])
      s.add_runtime_dependency(%q<simpleidn>, [">= 0"])
      s.add_runtime_dependency(%q<rmail>, [">= 0"])
      s.add_runtime_dependency(%q<thrift>, [">= 0"])
      s.add_runtime_dependency(%q<cookie_types>, [">= 0"])
      s.add_runtime_dependency(%q<american_date>, [">= 0"])
      s.add_runtime_dependency(%q<fastercsv>, [">= 0"])
      s.add_runtime_dependency(%q<highline>, ["~> 1.6.1"])
      s.add_runtime_dependency(%q<hpricot>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rapleaf_types>, [">= 0"])
      s.add_dependency(%q<backports>, [">= 0"])
      s.add_dependency(%q<simpleidn>, [">= 0"])
      s.add_dependency(%q<rmail>, [">= 0"])
      s.add_dependency(%q<thrift>, [">= 0"])
      s.add_dependency(%q<cookie_types>, [">= 0"])
      s.add_dependency(%q<american_date>, [">= 0"])
      s.add_dependency(%q<fastercsv>, [">= 0"])
      s.add_dependency(%q<highline>, ["~> 1.6.1"])
      s.add_dependency(%q<hpricot>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rapleaf_types>, [">= 0"])
    s.add_dependency(%q<backports>, [">= 0"])
    s.add_dependency(%q<simpleidn>, [">= 0"])
    s.add_dependency(%q<rmail>, [">= 0"])
    s.add_dependency(%q<thrift>, [">= 0"])
    s.add_dependency(%q<cookie_types>, [">= 0"])
    s.add_dependency(%q<american_date>, [">= 0"])
    s.add_dependency(%q<fastercsv>, [">= 0"])
    s.add_dependency(%q<highline>, ["~> 1.6.1"])
    s.add_dependency(%q<hpricot>, [">= 0"])
  end
end
