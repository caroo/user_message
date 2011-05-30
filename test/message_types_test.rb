require 'test_helper.rb'

class MessageTypesTest < Test::Unit::TestCase
  
  def test_should_have_error_message
    assert_kind_of UserMessage::MessageTypes, UserMessage::MessageTypes::Error
  end

  def test_should_have_info_message
    assert_kind_of UserMessage::MessageTypes, UserMessage::MessageTypes::Info
  end

  def test_should_have_system_message
    assert_kind_of UserMessage::MessageTypes, UserMessage::MessageTypes::System
  end

  def test_should_have_sold_message
    assert_kind_of UserMessage::MessageTypes, UserMessage::MessageTypes::Sold
  end
  
  def test_should_color_red_for_error
    assert_equal :red, UserMessage::MessageTypes::Error.color
  end
  
  def test_should_color_green_for_info
    assert_equal :green, UserMessage::MessageTypes::Info.color
  end
  
  def test_should_color_orange_for_system
    assert_equal :orange, UserMessage::MessageTypes::System.color
  end
  
  def test_should_color_red_for_sold
    assert_equal :red, UserMessage::MessageTypes::Sold.color
  end
  
  def test_translate_type
    assert_equal "No results", UserMessage::MessageTypes::NoResult.to_s
  end
  
end
