# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{user_message}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["pkw.de Development Team"]
  s.date = %q{2010-02-02}
  s.description = %q{FIX (describe your package)}
  s.email = ["dev@pkw.de"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/user_message.rb", "lib/user_message/message.rb", "lib/user_message/message_helper.rb", "lib/user_message/message_types.rb", "script/console", "script/destroy", "script/generate", "test/test_helper.rb", "test/test_message.rb", "test/test_message_helper.rb", "test/test_message_types.rb", "user_message.tmproj"]
  s.homepage = %q{http://github.com/#{github_username}/#{project_name}}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{user_message}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{FIX (describe your package)}
  s.test_files = ["test/test_helper.rb", "test/test_message.rb", "test/test_message_helper.rb", "test/test_message_types.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.2"])
      s.add_runtime_dependency(%q<activerecord>, [">= 2.3.2"])
      s.add_runtime_dependency(%q<actionpack>, [">= 2.3.2"])
      s.add_runtime_dependency(%q<actionmailer>, [">= 2.3.2"])
      s.add_runtime_dependency(%q<renum>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 2.5.0"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.3.2"])
      s.add_dependency(%q<activerecord>, [">= 2.3.2"])
      s.add_dependency(%q<actionpack>, [">= 2.3.2"])
      s.add_dependency(%q<actionmailer>, [">= 2.3.2"])
      s.add_dependency(%q<renum>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 2.5.0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.3.2"])
    s.add_dependency(%q<activerecord>, [">= 2.3.2"])
    s.add_dependency(%q<actionpack>, [">= 2.3.2"])
    s.add_dependency(%q<actionmailer>, [">= 2.3.2"])
    s.add_dependency(%q<renum>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 2.5.0"])
  end
end
