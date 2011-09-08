require 'test_helper.rb'

class TranslationTest < Test::Unit::TestCase
  
  def test_should_translate_headline
    assert_equal "This is test 2 headline", UserMessage::Message.translate("test_message2")
    assert_equal "This is a test", UserMessage::Message.translate("test_message")
    assert_equal "This is test 3 headline", UserMessage::Message.translate("test_message3")
    assert_equal "This is test 4 headline", UserMessage::Message.translate("test_interpolation", "headline", {:content => "test 4"})
  end
  
  def test_should_translate_body
    assert_equal "This is test 2 body", UserMessage::Message.translate("test_message2", "body")
    assert_equal "This is a test", UserMessage::Message.translate("test_message", "body")
    assert_equal "This is test 3 body", UserMessage::Message.translate("test_message3", "body")
    assert_equal "This is test 4 body", UserMessage::Message.translate("test_interpolation", "body", {:content => "test 4"})
  end
  
  
  def test_should_translate_body_array
    user_message = UserMessage.info("Hello world", ["body_array.element1", "body_array.element2"])
    assert_equal "Hello world", user_message.headline
    assert_equal "This is body element 1", user_message.body.first
    assert_equal "This is body element 2", user_message.body.last
  end
  
  def test_should_not_translate
    user_message = UserMessage.info("Hello world", "Hello world again")
    assert_equal "Hello world", user_message.headline
    assert_equal "Hello world again", user_message.body.first
  end
end