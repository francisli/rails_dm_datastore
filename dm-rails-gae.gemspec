# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-rails-gae}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["joshsmoore"]
  s.date = %q{2009-12-19}
  s.description = %q{Integrate datamapper to rails3 for the Google App Engine}
  s.email = %q{joshsmoore@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "dm-rails-gae.gemspec",
     "generators/data_mapper/USAGE",
     "generators/data_mapper/model/model_generator.rb",
     "generators/data_mapper/model/templates/model.rb",
     "generators/data_mapper/templates/model.rb",
     "lib/USAGE",
     "lib/dm-rails-gae.rb",
     "lib/generators/data_mapper/USAGE",
     "lib/generators/data_mapper/model/model_generator.rb",
     "lib/generators/data_mapper/model/templates/model.rb",
     "lib/generators/data_mapper/templates/model.rb",
     "test/helper.rb",
     "test/test_dm-rails-gae.rb"
  ]
  s.homepage = %q{http://github.com/joshsmoore/dm-rails-gae}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Generators for dm on gae}
  s.test_files = [
    "test/helper.rb",
     "test/test_dm-rails-gae.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end

