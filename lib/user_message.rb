require "user_message/version"

require 'user_message/railtie'
require 'user_message/message_types'
require 'user_message/message'
require 'user_message/message_helper'

module UserMessage

  UserMessage::MessageTypes.each do |type|
    method_name = type.name.downcase
    define_method method_name do |*args|
      translation_values = args.extract_options!
      UserMessage::Message.new(:type  => type, :headline => args.first, :body => args[1], :translation_values => translation_values)
    end
    module_function method_name.to_sym
    
    method_name2 = "#{method_name}2"
    define_method method_name2 do |*args|
      translation_values = args.extract_options!
      UserMessage::Message.new(:type  => type, :headline => args.first, :body => args.first, :translation_values => translation_values)
    end
    module_function method_name2.to_sym
  end
end