require File.dirname(__FILE__) + '/test_helper.rb'

class TestUserMessageTypes < Test::Unit::TestCase
  
  def test_should_have_error_message
    assert_kind_of UserMessageTypes, UserMessageTypes::Error
  end

  def test_should_have_info_message
    assert_kind_of UserMessageTypes, UserMessageTypes::Info
  end

  def test_should_have_system_message
    assert_kind_of UserMessageTypes, UserMessageTypes::System
  end

  def test_should_have_sold_message
    assert_kind_of UserMessageTypes, UserMessageTypes::Sold
  end
  
  def test_should_color_red_for_error
    assert_equal :red, UserMessageTypes::Error.color
  end
  
  def test_should_color_green_for_info
    assert_equal :green, UserMessageTypes::Info.color
  end
  
  def test_should_color_orange_for_system
    assert_equal :orange, UserMessageTypes::System.color
  end
  
  def test_should_color_red_for_sold
    assert_equal :red, UserMessageTypes::Sold.color
  end
  
  def test_should_have_string_representation_fehler_for_error
    I18n.expects(:t).returns("Fehler")
    assert_equal "Fehler", UserMessageTypes::Error.name
  end
  
  def test_should_have_string_representation_info_for_info
    I18n.expects(:t).returns("Info")
    assert_equal "Info", UserMessageTypes::Info.name
  end
  
  def test_should_have_string_representation_system_for_error
    I18n.expects(:t).returns("System")
    assert_equal "System", UserMessageTypes::System.name
  end
  
  def test_should_have_string_representation_verkauft_for_error
    I18n.expects(:t).returns("Verkauft")
    assert_equal "Verkauft", UserMessageTypes::Sold.name
  end
  
end