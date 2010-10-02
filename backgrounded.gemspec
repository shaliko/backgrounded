# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{backgrounded}
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Sonnek"]
  s.date = %q{2010-10-01}
  s.email = %q{ryan.sonnek@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "backgrounded.gemspec",
     "lib/backgrounded.rb",
     "lib/backgrounded/class_methods.rb",
     "lib/backgrounded/handler/delayed_job_handler.rb",
     "lib/backgrounded/handler/inprocess_handler.rb",
     "lib/backgrounded/handler/resque_handler.rb",
     "lib/backgrounded/handler/workling_handler.rb",
     "test/backgrounded/handler/delayed_job_handler_test.rb",
     "test/backgrounded/handler/resque_handler_test.rb",
     "test/backgrounded_test.rb",
     "test/database.yml",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/wireframe/backgrounded}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple API to run Model methods in the background}
  s.test_files = [
    "test/backgrounded/handler/delayed_job_handler_test.rb",
     "test/backgrounded/handler/resque_handler_test.rb",
     "test/backgrounded_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 2.2.3"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.2.3"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_development_dependency(%q<resque_unit>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.2.3"])
      s.add_dependency(%q<activesupport>, [">= 2.2.3"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<resque_unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.2.3"])
    s.add_dependency(%q<activesupport>, [">= 2.2.3"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<resque_unit>, [">= 0"])
  end
end

