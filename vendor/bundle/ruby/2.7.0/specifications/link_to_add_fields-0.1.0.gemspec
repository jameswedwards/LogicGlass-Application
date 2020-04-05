# -*- encoding: utf-8 -*-
# stub: link_to_add_fields 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "link_to_add_fields".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["richard lynch".freeze]
  s.date = "2017-10-07"
  s.description = "When clicked, `link_to_add_fields` will render the association's fields partial \nabove it.\n`link_to_remove_fields` will hide the HTML element matching it's target css \nselector. It also sets a truthy value in the hidden input field closest to it.\n".freeze
  s.email = ["rjlynch86@googlemail.com".freeze]
  s.homepage = "https://github.com/rjlynch".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Dynamically add nested fields to your Rails forms.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_development_dependency(%q<poltergeist>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<poltergeist>.freeze, [">= 0"])
  end
end
