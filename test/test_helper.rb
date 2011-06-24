require 'rubygems'

gem 'test-unit'
require 'test/unit'
require 'mocha'

require 'stringio'
require 'action_controller' # for ActionController::Flash
require 'active_model/errors'
require 'user_message'
UserMessage::Railtie.initializers.map(&:block).each(&:call)