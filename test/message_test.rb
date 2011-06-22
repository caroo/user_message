require 'test_helper.rb'

class MessageTest < Test::Unit::TestCase
  
  def test_should_have_an_user_message_type_associated
    message = UserMessage::Message.new(:type => UserMessage::MessageTypes::Error)
    assert_equal UserMessage::MessageTypes::Error, message.type
  end
  
  def test_should_have_a_headline
    message = UserMessage::Message.new(:headline => "Fahrzeug erfolgreich eingestellt.")
    assert_equal "Fahrzeug erfolgreich eingestellt.", message.headline
  end
  
  def test_should_have_one_body_element_to_print
    message = UserMessage::Message.new(:body => "Viel Erfolg bei dem Verkauf über pkw.de.")
    assert_equal "Viel Erfolg bei dem Verkauf über pkw.de.", message.body.first
  end
  
  def test_should_have_default_user_message_type_set_to_info
    message = UserMessage::Message.new
    assert_equal UserMessage::MessageTypes::Info, message.type
  end
  
  def test_should_have_more_than_one_body_element_to_print
    message = UserMessage::Message.new(:body => "Viel Erfolg bei dem Verkauf über pkw.de.")
    message.body << "Hoffentlich finden sie ihr neues Auto auch bei uns."
    assert_equal 2, message.body.size
  end
  
  def test_should_accept_active_record_errors_object_for_body
    ar_errors = ActiveRecord::Errors.new(mock("Object"))
    ar_errors.add("firstname", "Ein Name muss vorhanden sein.")
    ar_errors.add("zipcode", "PLZ muss gegeben sein.")
    ar_errors.add("firstname", "Der Name darf keine Sonderzeichen enthalten.")
    message = UserMessage::Message.new(:type => UserMessage::MessageTypes::Error,
                              :body => ar_errors)
    assert_equal 3, message.body.size, message.body.inspect
  end
  
  def test_should_have_simple_messages_and_active_record_errors_alongside_in_the_body_and_iterate_over_them_in_a_unified_way
    ar_errors = ActiveRecord::Errors.new(mock("Object"))
    ar_errors.add("firstname", "Ein Name muss vorhanden sein.")
    ar_errors.add("zipcode", "PLZ muss gegeben sein.")
    ar_errors.add("firstname", "Der Name darf keine Sonderzeichen enthalten.")
    message = UserMessage::Message.new(:type => UserMessage::MessageTypes::Error,
                              :body => ar_errors)
    message.body << "Fahren sie vorsichtig!"
    assert_equal 4, message.body.size
  
    message.body.each do |body_element|
      assert_kind_of String, body_element
    end
  end
  
  def test_should_have_shortcut_methods
    user_message = UserMessage.info("headline", "body")
    assert_equal UserMessage::MessageTypes::Info, user_message.type
    assert_equal "headline", user_message.headline
    assert_equal "body", user_message.body.first
    
    user_message = UserMessage.error2("string")
    assert_equal UserMessage::MessageTypes::Error, user_message.type
    assert_equal "string", user_message.headline
    assert_equal "string", user_message.body.first
  end

  if defined?(::JSON)
    def test_should_serialise_message_type_in_json
      message = UserMessage::Message.new(:type => UserMessage::MessageTypes::Error)
      message_json = message.to_json(:fields => true)
      message_again = JSON.parse(message_json, :create_additions => false)
      assert_not_nil message_again['type']
      assert_equal 'red', message_again['type']['color']
    end
  end
end
