# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{simple-navigation}
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andi Schacke"]
  s.date = %q{2009-06-16}
  s.description = %q{Simple Navigation is a ruby library for creating a navigation (optionally with sub navigation) for your rails app.}
  s.email = %q{andreas.schacke@gmail.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    ".gitignore",
     "CHANGELOG",
     "CHANGELOG",
     "README",
     "Rakefile",
     "VERSION.yml",
     "generators/navigation_config/USAGE",
     "generators/navigation_config/navigation_config_generator.rb",
     "generators/navigation_config/templates/config/navigation.rb",
     "init.rb",
     "install.rb",
     "lib/simple_navigation.rb",
     "lib/simple_navigation/configuration.rb",
     "lib/simple_navigation/controller_methods.rb",
     "lib/simple_navigation/helpers.rb",
     "lib/simple_navigation/item.rb",
     "lib/simple_navigation/item_container.rb",
     "lib/simple_navigation/renderer/base.rb",
     "lib/simple_navigation/renderer/list.rb",
     "rails/init.rb",
     "simple-navigation.gemspec",
     "spec/lib/simple_navigation/configuration_spec.rb",
     "spec/lib/simple_navigation/controller_methods_spec.rb",
     "spec/lib/simple_navigation/helpers_spec.rb",
     "spec/lib/simple_navigation/item_container_spec.rb",
     "spec/lib/simple_navigation/item_spec.rb",
     "spec/lib/simple_navigation/renderer/base_spec.rb",
     "spec/lib/simple_navigation/renderer/list_spec.rb",
     "spec/lib/simple_navigation_spec.rb",
     "spec/spec_helper.rb",
     "uninstall.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/andi/simple-navigation}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{andi}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Simple Navigation is a ruby library for creating a navigation (optionally with sub navigation) for your rails app.}
  s.test_files = [
    "spec/lib/simple_navigation/configuration_spec.rb",
     "spec/lib/simple_navigation/controller_methods_spec.rb",
     "spec/lib/simple_navigation/helpers_spec.rb",
     "spec/lib/simple_navigation/item_container_spec.rb",
     "spec/lib/simple_navigation/item_spec.rb",
     "spec/lib/simple_navigation/renderer/base_spec.rb",
     "spec/lib/simple_navigation/renderer/list_spec.rb",
     "spec/lib/simple_navigation_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
