require 'rubygems'

gem 'test-unit'
require 'test/unit'
require 'mocha'

require 'stringio'
require 'active_support' # for I18n
require 'active_record' # for ActiveRecord::Errors
require 'action_controller' # for ActionController::Flash

require File.dirname(__FILE__) + '/../rails/init.rb'

ActiveRecord::Base # Wenn diese Zeile entfernt wird, dann wird ActiveRecord::Errors nicht gefunden.