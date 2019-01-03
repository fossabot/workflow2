# -*- encoding: utf-8 -*-
# stub: cookie_types 1.0.787 ruby . lib lib/cookie_types

Gem::Specification.new do |s|
  s.name = "cookie_types"
  s.version = "1.0.787"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = [".", "lib", "lib/cookie_types"]
  s.authors = ["Davin Chia"]
  s.date = "2018-11-17"
  s.description = "Thrift Cookie Types used by Spruce"
  s.email = ["spruce@rapleaf.com"]
  s.extra_rdoc_files = [".//lib/cookie_types.rb", ".//lib/cookie_types/mock_service_helper.rb", ".//lib/cookie_types/spruce_cookies_constants.rb", ".//lib/cookie_types/spruce_cookies_types.rb", ".//lib/cookie_types/spruce_lib_service.rb", ".//lib/cookie_types/spruce_lib_service_constants.rb", ".//lib/cookie_types/spruce_lib_service_types.rb"]
  s.files = [".//lib/cookie_types.rb", ".//lib/cookie_types/mock_service_helper.rb", ".//lib/cookie_types/spruce_cookies_constants.rb", ".//lib/cookie_types/spruce_cookies_types.rb", ".//lib/cookie_types/spruce_lib_service.rb", ".//lib/cookie_types/spruce_lib_service_constants.rb", ".//lib/cookie_types/spruce_lib_service_types.rb"]
  s.rubygems_version = "2.5.1"
  s.summary = "Thrift Cookie Types used by Spruce"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rapleaf_types>, [">= 0"])
    else
      s.add_dependency(%q<rapleaf_types>, [">= 0"])
    end
  else
    s.add_dependency(%q<rapleaf_types>, [">= 0"])
  end
end
