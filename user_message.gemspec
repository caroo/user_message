# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{user_message}
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["pkw.de Development Team"]
  s.date = %q{2011-05-30}
  s.description = %q{FIX (describe your package)}
  s.email = ["dev@pkw.de"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["Gemfile", "Gemfile.lock", "History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/user_message.rb", "lib/user_message/message.rb", "lib/user_message/message_helper.rb", "lib/user_message/message_types.rb", "lib/views/shared/_user_message.html.erb", "locale/de.yml", "locale/en.yml", "rails/init.rb", "script/console", "script/destroy", "script/generate", "test/message_helper_test.rb", "test/message_test.rb", "test/message_types_test.rb", "test/test_helper.rb", "user_message.gemspec"]
  s.homepage = %q{http://github.com/#{github_username}/#{project_name}}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{user_message}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{FIX (describe your package)}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.3.10"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 2.3.10"])
      s.add_runtime_dependency(%q<actionpack>, ["~> 2.3.10"])
      s.add_runtime_dependency(%q<renum>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<i18n>, ["~> 0.5.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 2.0.9"])
      s.add_development_dependency(%q<hoe>, [">= 2.9.4"])
    else
      s.add_dependency(%q<activesupport>, ["~> 2.3.10"])
      s.add_dependency(%q<activerecord>, ["~> 2.3.10"])
      s.add_dependency(%q<actionpack>, ["~> 2.3.10"])
      s.add_dependency(%q<renum>, [">= 1.3.0"])
      s.add_dependency(%q<i18n>, ["~> 0.5.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 2.0.9"])
      s.add_dependency(%q<hoe>, [">= 2.9.4"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 2.3.10"])
    s.add_dependency(%q<activerecord>, ["~> 2.3.10"])
    s.add_dependency(%q<actionpack>, ["~> 2.3.10"])
    s.add_dependency(%q<renum>, [">= 1.3.0"])
    s.add_dependency(%q<i18n>, ["~> 0.5.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 2.0.9"])
    s.add_dependency(%q<hoe>, [">= 2.9.4"])
  end
end
