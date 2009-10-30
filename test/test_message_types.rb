require File.dirname(__FILE__) + '/test_helper.rb'

class TestMessageTypes < Test::Unit::TestCase
  
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
  
  def test_should_have_string_representation_fehler_for_error
    I18n.expects(:t).returns("Fehler")
    assert_equal "Fehler", UserMessage::MessageTypes::Error.name
  end
  
  def test_should_have_string_representation_info_for_info
    I18n.expects(:t).returns("Info")
    assert_equal "Info", UserMessage::MessageTypes::Info.name
  end
  
  def test_should_have_string_representation_system_for_error
    I18n.expects(:t).returns("System")
    assert_equal "System", UserMessage::MessageTypes::System.name
  end
  
  def test_should_have_string_representation_verkauft_for_error
    I18n.expects(:t).returns("Verkauft")
    assert_equal "Verkauft", UserMessage::MessageTypes::Sold.name
  end
  
end