require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/user_message'

Hoe.plugin :newgem
Hoe.plugins.delete :rubyforge
Hoe.plugins.delete :test

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'user_message' do
  self.developer 'pkw.de Development Team', 'dev@pkw.de'
  
  self.extra_deps         = [
    ['activesupport', '~> 2.3.5'], # for I18n
    ['activerecord', '~> 2.3.5'], # for ActiveRecord::Errors
    ['actionpack', '~> 2.3.5'], # for ActionController::Flash
    ['renum', ">=1.2.0"]
  ]
  
  self.extra_dev_deps = [
    ['mocha'],
    ['test-unit', ">= 2.0.9"]
  ]

end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

# TODO - want other tests/tasks run by default? Add them to the list
# remove_task :default
task :default => [:test]
