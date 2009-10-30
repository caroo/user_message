require File.dirname(__FILE__) + '/test_helper.rb'

class TestMessage < Test::Unit::TestCase
  
  def test_should_have_an_user_message_type_associated
    message = UserMessage::Message.new(:type => UserMessageTypes::Error)
    assert_equal UserMessageTypes::Error, message.type
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
    assert_equal UserMessageTypes::Info, message.type
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
    message = UserMessage::Message.new(:type => UserMessageTypes::Error,
                              :body => ar_errors)
    assert_equal 3, message.body.size
  end
  
  def test_should_have_simple_messages_and_active_record_errors_alongside_in_the_body_and_iterate_over_them_in_a_unified_way
    ar_errors = ActiveRecord::Errors.new(mock("Object"))
    ar_errors.add("firstname", "Ein Name muss vorhanden sein.")
    ar_errors.add("zipcode", "PLZ muss gegeben sein.")
    ar_errors.add("firstname", "Der Name darf keine Sonderzeichen enthalten.")
    message = UserMessage::Message.new(:type => UserMessageTypes::Error,
                              :body => ar_errors)
    message.body << "Fahren sie vorsichtig!"
    assert_equal 4, message.body.size
  
    message.body.each do |body_element|
      assert_kind_of String, body_element
    end
  end
  
end