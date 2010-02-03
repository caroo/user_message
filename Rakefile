require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/user_message'

Hoe.plugin :newgem
# Hoe.plugin :website
# Hoe.plugin :cucumberfeatures

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'user_message' do
  self.developer 'pkw.de Development Team', 'dev@pkw.de'
  # self.post_install_message = 'PostInstall.txt' # TODO remove if post-install message not required
  # self.rubyforge_name       = self.name # TODO this is default value
  
  self.extra_deps         = [
    ['activesupport', '>= 2.3.2'], # for I18n
    ['activerecord', '>= 2.3.2'], # for ActiveRecord::Errors
    ['actionpack', '>= 2.3.2'],
    ['actionmailer', '>= 2.3.2'], # for ActionController::Flash
    ['renum', ">=1.2.0"]
  ]
  
  self.extra_dev_deps = [
    ['mocha']
  ]

end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }

# TODO - want other tests/tasks run by default? Add them to the list
# remove_task :default
# task :default => [:spec, :features]
