$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))


require 'renum'

require 'user_message/message'
require 'user_message/message_types'
require 'user_message/message_helper'


module UserMessage
  VERSION = '0.1.0'
end