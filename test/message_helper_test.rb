require File.dirname(__FILE__) + '/test_helper.rb'

class MessageHelperTest < Test::Unit::TestCase
  include UserMessage::MessageHelper
  include ActionView::Helpers::TagHelper
  
  # nur um ActionController zu simmulieren, nötig damit ActionController::Flash funktioniert
  def assign_shortcuts;end
  def perform_action;end
  def reset_session;end
  def session
    {}
  end
  
  include ActionController::Flash
  
  def test_should_render_user_messages_which_are_stored_under_the_messages_key_in_the_flash
    errors = ActiveRecord::Errors.new(mock("Object"))
    errors.add("name", "Das ist nen doofer Name.")
    errors.add("name", "Der Name muss Hans Wurst sein.")
    errors.add("company", "Es sind keine Sonderzeichen erlaubt.")
    
    message = UserMessage::Message.new(
      :type => UserMessage::MessageTypes::Error,
      :headline => "Überprüfen Sie Ihre Eingaben",
      :body => errors
    )
                              
    flash[:messages] = message
    
    self.expects(:render).with({
      :partial => "shared/user_message",
      :locals => {
        :color => message.type.color,
        :type_name => message.type.name,
        :headline => message.headline,
        :body => message.body,
        :div_id => "user_message"
      }
    })
    
    render_user_messages
  end
  
  def test_should_render_empty_user_message_container
    assert_equal "<div id=\"user_message\" style=\"display:none\"></div>", render_user_messages
  end

end