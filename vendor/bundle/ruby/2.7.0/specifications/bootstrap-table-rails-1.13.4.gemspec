# -*- encoding: utf-8 -*-
# stub: bootstrap-table-rails 1.13.4 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap-table-rails".freeze
  s.version = "1.13.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Evan Chiu".freeze]
  s.date = "2019-02-19"
  s.description = "An extended Bootstrap table(wenzhixin/bootstrap-table), integrated in Rails assets pipeline.".freeze
  s.email = ["bjevanchiu@gmail.com".freeze]
  s.homepage = "https://github.com/bjevanchiu/bootstrap-table-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "an asset gemification of the bootstrap-table plugin".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
