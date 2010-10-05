# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{user_message}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["pkw.de Development Team"]
  s.date = %q{2010-10-04}
  s.description = %q{FIX (describe your package)}
  s.email = ["dev@pkw.de"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/user_message.rb", "lib/user_message/message.rb", "lib/user_message/message_helper.rb", "lib/user_message/message_types.rb", "script/console", "script/destroy", "script/generate", "test/message_helper_test.rb", "test/message_test.rb", "test/message_types_test.rb", "test/test_helper.rb", "user_message.gemspec", "user_message.tmproj"]
  s.homepage = %q{http://github.com/#{github_username}/#{project_name}}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{user_message}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{FIX (describe your package)}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.3.5"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 2.3.5"])
      s.add_runtime_dependency(%q<actionpack>, ["~> 2.3.5"])
      s.add_runtime_dependency(%q<renum>, [">= 1.2.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 2.0.9"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.1"])
    else
      s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
      s.add_dependency(%q<activerecord>, ["~> 2.3.5"])
      s.add_dependency(%q<actionpack>, ["~> 2.3.5"])
      s.add_dependency(%q<renum>, [">= 1.2.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 2.0.9"])
      s.add_dependency(%q<hoe>, [">= 2.6.1"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
    s.add_dependency(%q<activerecord>, ["~> 2.3.5"])
    s.add_dependency(%q<actionpack>, ["~> 2.3.5"])
    s.add_dependency(%q<renum>, [">= 1.2.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 2.0.9"])
    s.add_dependency(%q<hoe>, [">= 2.6.1"])
  end
end
