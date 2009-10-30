require 'stringio'
require 'test/unit'
require File.dirname(__FILE__) + '/../lib/user_message'

require 'activesupport' # for I18n
require 'activerecord' # for ActiveRecord::Errors
require 'actionmailer' # for ActionController::Flash
require 'mocha'

ActiveRecord::Base # Wenn diese Zeile entfernt wird, dann wird ActiveRecord::Errors nicht gefunden.