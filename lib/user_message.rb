$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'renum'
require 'active_support'
require 'action_pack'
require 'user_message/message_types'
require 'user_message/message'
require 'user_message/message_helper'


module UserMessage
  VERSION = '0.2.0'

  UserMessage::MessageTypes.each do |type|
    method_name = type.name.downcase
    define_method method_name do |*args|
      UserMessage::Message.new(:type  => type, :headline => args.first, :body => args[1])
    end
    module_function method_name.to_sym
  end
end