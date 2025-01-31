# -*- encoding: utf-8 -*-
# stub: rerun 0.13.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rerun".freeze
  s.version = "0.13.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alex Chaffee".freeze]
  s.date = "2020-12-09"
  s.description = "Restarts your app when a file changes. A no-frills, command-line alternative to Guard, Shotgun, Autotest, etc.".freeze
  s.email = "alex@stinky.com".freeze
  s.executables = ["rerun".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze, "bin/rerun".freeze]
  s.homepage = "http://github.com/alexch/rerun/".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.6".freeze
  s.summary = "Launches an app, and restarts it whenever the filesystem changes. A no-frills, command-line alternative to Guard, Shotgun, Autotest, etc.".freeze

  s.installed_by_version = "3.4.6" if s.respond_to? :installed_by_version

  s.specification_version = 2

  s.add_runtime_dependency(%q<listen>.freeze, ["~> 3.0"])
end
