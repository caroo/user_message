require 'rubygems'

gem 'test-unit'
require 'test/unit'
require 'mocha'

require 'stringio'
require 'rails'
require 'action_controller' # for ActionController::Flash
require 'active_model/errors'
require 'user_message'

module UserMessage
  class TestApplication < Rails::Application
    config.active_support.deprecation :log
  end
end
UserMessage::TestApplication.initialize!