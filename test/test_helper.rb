require 'rubygems'

gem 'test-unit'
require 'test/unit'
require 'mocha/setup'

require 'stringio'
require 'rails'
require 'action_controller' # for ActionController::Flash
require 'active_model/errors'
require 'user_message'

require 'i18n'
I18n.config.load_path << File.expand_path(File.join(File.dirname(__FILE__), *%w[assets en.yml]))

module UserMessage
  class TestApplication < Rails::Application
    config.active_support.deprecation :log
  end
end
UserMessage::TestApplication.initialize!